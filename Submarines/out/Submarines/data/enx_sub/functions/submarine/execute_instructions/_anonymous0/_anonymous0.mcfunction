tag @s remove enx_sub_forward_calc
data modify entity @s Rotation[0] set from storage enx_sub:data this.Rotation[0]
execute at @s run tp @s ^ ^ ^1
execute store result score FORWARD_X enx_sub_op run data get entity @s Pos[0] 100
execute store result score FORWARD_Z enx_sub_op run data get entity @s Pos[2] 100
execute store result score TEMP enx_sub_op run data get storage enx_sub:data this.Pos[0] 100
scoreboard players operation FORWARD_X enx_sub_op -= TEMP enx_sub_op
execute store result score TEMP enx_sub_op run data get storage enx_sub:data this.Pos[2] 100
scoreboard players operation FORWARD_Z enx_sub_op -= TEMP enx_sub_op
scoreboard players operation FORWARD_X enx_sub_op *= Z_MOTION enx_sub_global
scoreboard players operation FORWARD_Z enx_sub_op *= Z_MOTION enx_sub_global
execute store result storage enx_sub:data this.Motion[0] double 0.0045000000000000005 run scoreboard players get FORWARD_X enx_sub_op
execute store result storage enx_sub:data this.Motion[2] double 0.0045000000000000005 run scoreboard players get FORWARD_Z enx_sub_op
kill @s
