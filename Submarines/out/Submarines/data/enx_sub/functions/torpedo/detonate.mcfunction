execute unless block ~ ~ ~ #minecraft:wither_immune run setblock ~ ~ ~ minecraft:air destroy
summon minecraft:creeper ~ ~ ~ {CustomName:"\"a torpedo\"",Fuse:0s,ExplosionRadius:8b,DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:10000,Amplifier:117b,ShowParticles:0b}]}
schedule function enx_sub:torpedo/detonate/_anonymous0 2t append
kill @s
