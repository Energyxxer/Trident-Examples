replaceitem entity @s armor.feet minecraft:air
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["replacement_present"]}
execute as @e[type=minecraft:item,tag=replacement_present,limit=1,distance=0..0.01] run function enx_presents:present_item/default_player/present_boots_test/unequip/_anonymous0
