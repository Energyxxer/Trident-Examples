data modify entity @e[tag=trident-component.enx_util.enx_prot_r_id_holder,tag=link_return,limit=1] ArmorItems[0].tag.RegionWhitelist set from storage enx_prot:data NewWhitelist
scoreboard players operation SEARCH enx_prot_pid_lnk = @s enx_prot_pid_lnk
execute as @e[tag=trident-component.enx_util.enx_prot_p_id_holder] if score @s enx_prot_pid = SEARCH enx_prot_pid_lnk run tag @s add link_return
execute if entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] run function enx_prot:player/default_player/menus/remove/_anonymous0/_anonymous1/_anonymous0
execute unless entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] run tellraw @s [{"text":"Player ID ","color":"aqua"},{"score":{"name":"PLAYER_REMOVE","objective":"enx_prot_global"}},{"text":" has been removed from this region's whitelist!","color":"dark_aqua"}]
tag @e remove link_return
