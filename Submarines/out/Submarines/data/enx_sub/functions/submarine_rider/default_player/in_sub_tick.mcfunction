data modify storage enx_sub:data player set from entity @s {}
effect give @s minecraft:night_vision 5 0 true
effect give @s minecraft:water_breathing 2 0 true
effect give @s minecraft:resistance 2 4 true
effect give @s minecraft:invisibility 2 0 true
execute store result score @s enx_sub_op run data get storage enx_sub:data player.Motion[1] 100
execute store result score Y_MOTION enx_sub_global if score @s enx_sub_op matches 1..
execute if entity @s[x_rotation=45..90] run scoreboard players remove Y_MOTION enx_sub_global 1
execute store result score ORIGIN_X enx_sub_op run data get storage enx_sub:data player.Pos[0] 100
execute store result score ORIGIN_Z enx_sub_op run data get storage enx_sub:data player.Pos[2] 100
execute store result score ABSOLUTE_MOT_X enx_sub_op run data get storage enx_sub:data player.Motion[0] 10000
execute store result score ABSOLUTE_MOT_Z enx_sub_op run data get storage enx_sub:data player.Motion[2] 10000
execute store result score ANGLE enx_sub_op run data get storage enx_sub:data player.Rotation[0] -1
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["enx_sub_trig_calc"]}
execute as @e[type=minecraft:area_effect_cloud,tag=enx_sub_trig_calc,limit=1,distance=0..0.01] run function enx_sub:submarine_rider/default_player/in_sub_tick/_anonymous0
scoreboard players operation PART_A enx_sub_op = ABSOLUTE_MOT_X enx_sub_op
scoreboard players operation PART_A enx_sub_op *= SIN_YAW enx_sub_op
scoreboard players operation PART_B enx_sub_op = ABSOLUTE_MOT_Z enx_sub_op
scoreboard players operation PART_B enx_sub_op *= COS_YAW enx_sub_op
scoreboard players operation PART_A enx_sub_op += PART_B enx_sub_op
scoreboard players operation LOCAL_MOT_X enx_sub_op = PART_A enx_sub_op
scoreboard players set PART_A enx_sub_op 0
scoreboard players operation PART_A enx_sub_op -= ABSOLUTE_MOT_X enx_sub_op
scoreboard players operation PART_A enx_sub_op *= COS_YAW enx_sub_op
scoreboard players operation PART_B enx_sub_op = ABSOLUTE_MOT_Z enx_sub_op
scoreboard players operation PART_B enx_sub_op *= SIN_YAW enx_sub_op
scoreboard players operation PART_A enx_sub_op += PART_B enx_sub_op
scoreboard players operation LOCAL_MOT_Z enx_sub_op = PART_A enx_sub_op
execute store result score YAW_SPEED enx_sub_global if score LOCAL_MOT_X enx_sub_op matches ..-10000
execute if score LOCAL_MOT_X enx_sub_op matches 10000.. run scoreboard players set YAW_SPEED enx_sub_global -1
scoreboard players operation YAW_SPEED enx_sub_global *= TURN_SPEED enx_sub_global
execute store result score Z_MOTION enx_sub_global if score LOCAL_MOT_Z enx_sub_op matches 10000..
execute unless score LOCAL_MOT_X enx_sub_op matches -10000..10000 run tag @s add moving
execute if score LOCAL_MOT_Z enx_sub_op matches 10000.. run tag @s add moving
execute unless score Y_MOTION enx_sub_global matches 0 run tag @s add moving
scoreboard players set ANIMATE enx_sub_global 0
execute if entity @s[tag=moving] run scoreboard players set ANIMATE enx_sub_global 1
execute if score LOCAL_MOT_Z enx_sub_op matches ..-10000 run tag @s add moving
execute if entity @s[tag=!moving] run playsound minecraft:entity.guardian.ambient master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=moving] run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 2 0.5
tag @s remove moving
scoreboard players set ABILITY enx_sub_global 0
tag @s remove enx_sub_charging
execute unless score LOCAL_MOT_Z enx_sub_op matches ..-10000 run tag @s remove enx_sub_ability_lock
execute if score LOCAL_MOT_Z enx_sub_op matches ..-10000 unless score @s enx_sub_cooldown matches 1.. run tag @s[tag=!enx_sub_ability_lock] add enx_sub_charging
execute if score @s[tag=enx_sub_charging] enx_sub_charge matches 19 run playsound minecraft:entity.generic.small_fall master @s ~ ~ ~ 1 0 1
execute if score @s[tag=enx_sub_charging] enx_sub_charge matches 59 run playsound minecraft:entity.generic.big_fall master @s ~ ~ ~ 1 0 1
scoreboard players add @s[tag=enx_sub_charging,tag=!enx_sub_ability_lock,scores={enx_sub_charge=..59}] enx_sub_charge 1
execute if entity @s[scores={enx_sub_charge=1..},tag=!enx_sub_charging] run function enx_sub:submarine_rider/default_player/in_sub_tick/_anonymous1
execute if score @s enx_sub_cooldown matches 1.. run function enx_sub:submarine_rider/default_player/in_sub_tick/_anonymous2
execute unless score @s enx_sub_cooldown matches 1.. run function enx_sub:submarine_rider/display_charge
execute positioned ~ ~-1.25 ~ as @e[type=minecraft:armor_stand,tag=trident-entity.enx_sub.submarine,distance=..1,sort=nearest,limit=1] at @s run function enx_sub:submarine/execute_instructions
