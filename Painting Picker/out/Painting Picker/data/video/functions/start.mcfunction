kill @e[type=minecraft:painting]
clear @a
replaceitem entity @a hotbar.4 minecraft:painting 64
replaceitem entity @a hotbar.0 minecraft:ladder
tp @a -1140.5 18.5 125.0 180 -90
effect give @a minecraft:slow_falling 10 0 true
effect give @a minecraft:levitation 3 0 true
effect give @a minecraft:instant_health 1000 0 true
effect give @a minecraft:saturation 1000 0 true
gamemode survival @a
