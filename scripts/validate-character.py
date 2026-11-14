#!/usr/bin/env python3
"""Check a rigged GLB before replacing a game character; no third-party dependencies."""
import argparse, json, math, struct
from pathlib import Path


def validate(path):
    blob = Path(path).read_bytes()
    magic, version, length = struct.unpack_from('<III', blob)
    assert magic == 0x46546C67 and version == 2 and length == len(blob), 'invalid GLB header'
    offset, doc, binary = 12, None, None
    while offset < len(blob):
        size, kind = struct.unpack_from('<II', blob, offset)
        chunk = blob[offset+8:offset+8+size]
        if kind == 0x4E4F534A: doc = json.loads(chunk)
        if kind == 0x004E4942: binary = chunk
        offset += 8 + size
    assert doc and binary, 'missing GLB data'
    for image in doc.get('images', []):
        uri = image.get('uri', '')
        if uri and not uri.startswith('data:'):
            assert (Path(path).parent/uri).is_file(), 'missing texture '+uri

    def values(index):
        a = doc['accessors'][index]; v = doc['bufferViews'][a['bufferView']]
        assert v.get('buffer', 0) == 0, 'external buffer'
        count = {'SCALAR': 1, 'VEC2': 2, 'VEC3': 3, 'VEC4': 4, 'MAT4': 16}[a['type']]
        fmt = {5120:'b', 5121:'B', 5122:'h', 5123:'H', 5125:'I', 5126:'f'}[a['componentType']]
        size = struct.calcsize(fmt)*count
        start = v.get('byteOffset',0)+a.get('byteOffset',0)
        stride = v.get('byteStride',size)
        result = [struct.unpack_from('<'+fmt*count, binary, start+i*stride) for i in range(a['count'])]
        assert all(math.isfinite(x) for row in result for x in row), 'non-finite accessor'
        return result

    skins = doc.get('skins', [])
    assert skins and len(skins[0]['joints']) >= 20, 'missing humanoid skeleton'
    vertices, triangles = 0, 0
    for mesh in doc['meshes']:
        for primitive in mesh['primitives']:
            attrs = primitive['attributes']
            assert 'JOINTS_0' in attrs and 'WEIGHTS_0' in attrs, 'unskinned primitive'
            positions = values(attrs['POSITION'])
            weights = values(attrs['WEIGHTS_0'])
            assert len(positions) == len(weights), 'vertex / weight count mismatch'
            assert all(sum(row) > 0 for row in weights), 'unweighted vertex'
            weight_accessor = doc['accessors'][attrs['WEIGHTS_0']]
            divisor = {5121:255, 5123:65535}.get(weight_accessor['componentType'],1) if weight_accessor.get('normalized') else 1
            assert all(abs(sum(row)/divisor-1) < 0.02 for row in weights), 'unnormalized skin weights'
            assert 'WEIGHTS_1' not in attrs, 'more than four skin influences'
            joints = values(attrs['JOINTS_0'])
            assert all(0 <= joint < len(skins[0]['joints']) for row in joints for joint in row), 'joint outside skin'
            vertices += len(weights)
            triangles += doc['accessors'][primitive['indices']]['count']//3
    clips = {}
    for animation in doc.get('animations', []):
        name = animation.get('name', '')
        assert name not in clips, 'duplicate animation '+name
        assert len(animation['channels']) >= 10, 'insufficient animated joints'
        duration = max(values(s['input'])[-1][0] for s in animation['samplers'])
        assert duration > 0.5, 'empty animation '+name
        moving = 0
        for sampler in animation['samplers']:
            output = values(sampler['output'])
            if any(any(abs(x-y) > 1e-5 for x,y in zip(row, output[0])) for row in output[1:]): moving += 1
        assert moving >= 5, 'static animation '+name
        endpoint_angle, endpoint_distance = 0, 0
        for channel in animation['channels']:
            output = values(animation['samplers'][channel['sampler']]['output'])
            first, last = output[0], output[-1]
            if channel['target']['path'] == 'rotation':
                norm = math.sqrt(sum(x*x for x in first)*sum(x*x for x in last))
                dot = min(1, abs(sum(x*y for x,y in zip(first,last)))/norm) if norm else 1
                endpoint_angle = max(endpoint_angle, math.degrees(2*math.acos(dot)))
            elif channel['target']['path'] == 'translation':
                endpoint_distance = max(endpoint_distance, math.sqrt(sum((x-y)**2 for x,y in zip(first,last))))
        if name in {'Idle', 'Typing'}:
            assert endpoint_angle < 0.1 and endpoint_distance < 1e-5, 'loop seam in '+name
        clips[name] = {'seconds': round(duration, 3), 'channels': len(animation['channels']), 'movingChannels': moving,
                       'endpointRotationDegrees': round(endpoint_angle,3), 'endpointTranslation': round(endpoint_distance,6)}
    assert set(clips) == {'Idle', 'Typing', 'Cheer'}, 'unexpected clips '+str(list(clips))
    return {'file': str(path), 'joints':len(skins[0]['joints']), 'vertices':vertices, 'triangles':triangles, 'clips':clips}

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__); parser.add_argument('files', nargs='+')
    args = parser.parse_args()
    print(json.dumps([validate(path) for path in args.files], indent=2))
