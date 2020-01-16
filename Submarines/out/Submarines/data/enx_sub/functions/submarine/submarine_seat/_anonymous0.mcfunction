data modify entity @s Glowing set value 0b
data modify entity @s[tag=!piloted] Invulnerable set value 0b
data modify entity @s[tag=piloted] Invulnerable set value 1b
scoreboard players set TEMP enx_sub_op 0
execute unless entity @s[tag=piloted] if entity @e[type=minecraft:player,distance=..5,limit=1] run function enx_sub:submarine/submarine_seat/_anonymous0/_anonymous0
tag @s remove piloted
