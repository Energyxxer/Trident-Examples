execute store result score TEMP enx_sub_op run data get storage enx_sub:data this.Rotation[0]
scoreboard players operation TEMP enx_sub_op += YAW_SPEED enx_sub_global
execute store result storage enx_sub:data this.Rotation[0] float 1 run scoreboard players get TEMP enx_sub_op
data modify storage enx_sub:data this.Pose.Head[2] set value 3.0f
execute if score YAW_SPEED enx_sub_global matches 1.. run data modify storage enx_sub:data this.Pose.Head[2] set value -3.0f
execute positioned ~ ~1 ~ run data modify entity @e[type=minecraft:minecart,tag=trident-entity.enx_sub.submarine_seat,distance=..2,sort=nearest,limit=1] Rotation set from storage enx_sub:data this.Rotation
