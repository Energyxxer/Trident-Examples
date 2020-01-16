execute if score @s enx_sub_charge matches 20..59 run function enx_sub:submarine_rider/default_player/in_sub_tick/_anonymous1/start_sonar
execute if score @s enx_sub_charge matches 60.. run function enx_sub:submarine_rider/default_player/in_sub_tick/_anonymous1/start_torpedo
scoreboard players set @s enx_sub_charge 0
tag @s add enx_sub_ability_lock
