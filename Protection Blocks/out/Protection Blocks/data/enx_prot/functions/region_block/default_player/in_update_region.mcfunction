execute if score @s enx_prot_pre_rid matches 0.. if score @s enx_prot_in_rid matches -1 run function enx_prot:region_block/default_player/in_update_region/_anonymous0
execute if score @s enx_prot_in_rid matches 0.. unless score @s enx_prot_in_rid = @s enx_prot_pre_rid run function enx_prot:region_block/default_player/in_update_region/_anonymous1
scoreboard players operation @s enx_prot_pre_rid = @s enx_prot_in_rid
