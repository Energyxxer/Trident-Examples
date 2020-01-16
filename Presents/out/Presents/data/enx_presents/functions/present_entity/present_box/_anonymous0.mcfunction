data modify storage enx_presents:data PresentItem set from entity @s ArmorItems[1]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["undo_present"]}
execute as @e[type=minecraft:item,tag=undo_present,limit=1,distance=0..0.01] run function enx_presents:present_entity/present_box/_anonymous0/_anonymous0
kill @s
