data modify storage enx_presents:data ReleaseItem set from entity @s ArmorItems[0]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["replacement_present"]}
execute as @e[type=minecraft:item,tag=replacement_present,limit=1,distance=0..0.01] run function enx_presents:present_entity/present_closed/open/_anonymous0
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b}}
playsound presents:present_unwrap neutral @a ~ ~ ~ 0.4000000059604645
kill @s
