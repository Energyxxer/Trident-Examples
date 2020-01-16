tag @s remove enx_sub_trig_calc
execute store result entity @s Rotation[0] float 1 run scoreboard players get ANGLE enx_sub_op
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
execute store result score COS_YAW enx_sub_op run data get entity @s Pos[0] 100
execute store result score SIN_YAW enx_sub_op run data get entity @s Pos[2] 100
kill @s
