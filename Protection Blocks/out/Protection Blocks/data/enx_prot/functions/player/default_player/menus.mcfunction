scoreboard players operation @s enx_prot_rid_lnk = @s enx_prot_in_rid
scoreboard players operation SEARCH enx_prot_rid_lnk = @s enx_prot_rid_lnk
execute as @e[tag=trident-component.enx_util.enx_prot_r_id_holder] if score @s enx_prot_rid = SEARCH enx_prot_rid_lnk run tag @s add link_return
execute unless entity @e[tag=trident-component.enx_util.enx_prot_r_id_holder,tag=link_return,limit=1] run function enx_prot:player/default_player/menus/deny_menu_no_region
scoreboard players operation PERMISSION_CHECK enx_prot_global = @s enx_prot_pid
execute as @e[tag=trident-component.enx_util.enx_prot_r_id_holder,tag=link_return,limit=1] run function enx_prot:region_block/check_permissions
execute if score IS_OWNER enx_prot_global matches 0 run function enx_prot:player/default_player/menus/deny_menu_not_owner
data modify storage enx_prot:data Whitelist set from entity @e[tag=trident-component.enx_util.enx_prot_r_id_holder,tag=link_return,limit=1] ArmorItems[0].tag.RegionWhitelist
execute if score @s enx_prot_ui matches 1 run function enx_prot:player/default_player/menus/main
execute if score @s enx_prot_ui matches 2 run function enx_prot:player/default_player/menus/manage_members
execute if score @s enx_prot_ui matches 3 run function enx_prot:player/default_player/menus/list_members
execute if score @s enx_prot_ui matches 5 run function enx_prot:player/default_player/menus/add
execute if score @s enx_prot_ui matches 6 run function enx_prot:player/default_player/menus/remove
scoreboard players reset @s enx_prot_ui
tag @e remove link_return
