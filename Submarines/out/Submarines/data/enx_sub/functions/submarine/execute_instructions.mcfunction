tag @s add piloted
execute positioned ~ ~1.2 ~ run tag @e[type=minecraft:minecart,tag=trident-entity.enx_sub.submarine_seat,distance=..2,sort=nearest,limit=1] add piloted
data modify storage enx_sub:data this set from entity @s {}
execute unless score Z_MOTION enx_sub_global matches 0 run function enx_sub:submarine/execute_instructions/_anonymous0
data modify storage enx_sub:data this.Motion[1] set value 0.0d
execute store result storage enx_sub:data this.Motion[1] double 0.30000000000000004 run scoreboard players get Y_MOTION enx_sub_global
data modify storage enx_sub:data this.Pose.Head set value [0.0f,0.0f,0.0f]
execute unless score YAW_SPEED enx_sub_global matches 0 run function enx_sub:submarine/execute_instructions/_anonymous1
execute if score ABILITY enx_sub_global matches 1 run function enx_sub:submarine/execute_instructions/sonar
execute if score ABILITY enx_sub_global matches 2 run function enx_sub:submarine/execute_instructions/launch_torpedo
execute positioned ~ ~1.5 ~ unless predicate enx_sub:trident-generated/predicate/0 run data remove storage enx_sub:data this.Motion
data modify entity @s {} merge from storage enx_sub:data this
execute if score ANIMATE enx_sub_global matches 1 run function enx_sub:submarine/execute_instructions/_anonymous2
