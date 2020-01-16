execute if entity @s[nbt={Facing:0b}] run summon minecraft:painting ~-0.01 ~-0.01 ~ {Motive:"minecraft:pool",Tags:["processed"],Facing:0b}
execute if entity @s[nbt={Facing:1b}] run summon minecraft:painting ~ ~-0.01 ~-0.01 {Motive:"minecraft:pool",Tags:["processed"],Facing:1b}
execute if entity @s[nbt={Facing:2b}] run summon minecraft:painting ~ ~-0.01 ~ {Motive:"minecraft:pool",Tags:["processed"],Facing:2b}
execute if entity @s[nbt={Facing:3b}] run summon minecraft:painting ~ ~-0.01 ~0.01 {Motive:"minecraft:pool",Tags:["processed"],Facing:3b}
kill @s
