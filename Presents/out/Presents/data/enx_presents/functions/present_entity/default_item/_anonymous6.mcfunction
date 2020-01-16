scoreboard players set FIRST enx_psnt_c_index 2147483647
scoreboard players set SECOND enx_psnt_c_index 2147483647
scoreboard players set FIRST enx_psnt_dye 2147483647
scoreboard players set SECOND enx_psnt_dye 2147483647
scoreboard players operation FIRST enx_psnt_c_index < @e[type=minecraft:item,scores={enx_psnt_dye=..2147483647},dx=0,dy=1,dz=0] enx_psnt_c_index
execute as @e[type=minecraft:item,scores={enx_psnt_c_index=..2147483647}] run scoreboard players operation @s enx_psnt_op = @s enx_psnt_c_index
execute as @e[type=minecraft:item,scores={enx_psnt_c_index=..2147483647}] run scoreboard players operation @s enx_psnt_op -= FIRST enx_psnt_c_index
execute as @e[type=minecraft:item,dx=0,dy=1,dz=0] if score @s enx_psnt_c_index = FIRST enx_psnt_c_index run scoreboard players operation FIRST enx_psnt_dye = @s enx_psnt_dye
execute as @e[type=minecraft:item,dx=0,dy=1,dz=0] if score @s enx_psnt_c_index = FIRST enx_psnt_c_index run scoreboard players reset @s enx_psnt_op
scoreboard players operation SECOND enx_psnt_c_index < @e[type=minecraft:item,scores={enx_psnt_dye=..2147483647,enx_psnt_op=..2147483647},dx=0,dy=1,dz=0] enx_psnt_op
execute as @e[type=minecraft:item,dx=0,dy=1,dz=0] if score @s enx_psnt_op = SECOND enx_psnt_c_index run scoreboard players operation SECOND enx_psnt_dye = @s enx_psnt_dye
execute if score FIRST enx_psnt_dye matches 0..15 if score SECOND enx_psnt_dye matches 0..15 run function enx_presents:present_entity/default_item/_anonymous6/_anonymous0
