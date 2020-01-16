execute if score @s enx_prot_pre_rid matches 0.. run tellraw @s {"text":"[You are now switching protected areas]","color":"gray"}
execute unless score @s enx_prot_pre_rid matches 0.. run tellraw @s {"text":"[You are now entering a protected area]","color":"gray"}
scoreboard players operation @s enx_prot_rid_lnk = @s enx_prot_in_rid
scoreboard players operation SEARCH enx_prot_rid_lnk = @s enx_prot_rid_lnk
execute as @e[tag=trident-component.enx_util.enx_prot_r_id_holder] if score @s enx_prot_rid = SEARCH enx_prot_rid_lnk run tag @s add link_return
scoreboard players operation PERMISSION_CHECK enx_prot_global = @s enx_prot_pid
execute as @e[tag=trident-component.enx_util.enx_prot_r_id_holder,tag=link_return,limit=1] run function enx_prot:region_block/check_permissions
execute if score PERMISSION_GRANTED enx_prot_global matches 1 run gamemode survival @s[gamemode=adventure]
execute if score PERMISSION_GRANTED enx_prot_global matches 0 run gamemode adventure @s[gamemode=survival]
tag @e remove link_return
