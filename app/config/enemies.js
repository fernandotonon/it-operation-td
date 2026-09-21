// Enemy definitions: cartoon digital threats. hp/speed at wave 1; hp scales with the wave.
// damage = Service Health lost when it reaches the rack. bounty = credits when defeated.
.pragma library

var enemies = {
    bug:     { id: "bug",     hp: 40,   speed: 1.1,  bounty: 6,   damage: 1,  radius: 0.35, color: "#f28a2f" },
    spam:    { id: "spam",    hp: 18,   speed: 2.0,  bounty: 4,   damage: 1,  radius: 0.3,  color: "#f2d02f" },
    trojan:  { id: "trojan",  hp: 110,  speed: 0.9,  bounty: 14,  damage: 2,  radius: 0.45, color: "#8a4fd6",
               onDeath: { spawn: "bug", count: 3, hpFactor: 0.6 } },
    stealth: { id: "stealth", hp: 55,   speed: 1.4,  bounty: 12,  damage: 1,  radius: 0.35, color: "#3fe0f2", concealed: true },
    lock:    { id: "lock",    hp: 380,  speed: 0.6,  bounty: 30,  damage: 3,  radius: 0.5,  color: "#e63946",
               disable: { range: 2.6, duration: 4.0, period: 9.0, immunity: 16.0 } },
    boss:    { id: "boss",    hp: 2800, speed: 0.45, bounty: 200, damage: 20, radius: 0.9,  color: "#c7c7c7", boss: true,
               thresholds: [0.75, 0.5, 0.25], spawn: { type: "spam", count: 5 } }
}
