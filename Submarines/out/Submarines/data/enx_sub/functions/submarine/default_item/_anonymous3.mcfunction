tag @s add sub_crafting
execute as @e[type=minecraft:item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:redstone_block",Count:2b}}] run function enx_sub:submarine/default_item/_anonymous3/_anonymous0
tag @s remove sub_crafting
