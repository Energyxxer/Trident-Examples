tag @s add enx_prot_craft_repeater
execute if entity @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b}},dx=0,dy=1,dz=0] run function enx_prot:crafting/default_item/_anonymous0/_anonymous0
execute if entity @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}},dx=0,dy=1,dz=0] run function enx_prot:crafting/default_item/_anonymous0/_anonymous1
execute if entity @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_pickaxe",Count:1b}},dx=0,dy=1,dz=0] run function enx_prot:crafting/default_item/_anonymous0/_anonymous2
execute if entity @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_pickaxe",Count:1b}},dx=0,dy=1,dz=0] run function enx_prot:crafting/default_item/_anonymous0/_anonymous3
execute if entity @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b}},dx=0,dy=1,dz=0] run function enx_prot:crafting/default_item/_anonymous0/_anonymous4
tag @s remove enx_prot_craft_repeater
