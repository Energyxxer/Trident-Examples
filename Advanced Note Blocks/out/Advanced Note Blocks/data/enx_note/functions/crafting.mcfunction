execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:note_block"}}] at @s if block ~ ~-1 ~ minecraft:crafting_table run function enx_note:crafting/transform
