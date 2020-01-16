scoreboard players operation SEARCH enx_prot_pid_lnk = @s enx_prot_pid_lnk
execute as @e[tag=trident-component.enx_util.enx_prot_p_id_holder] if score @s enx_prot_pid = SEARCH enx_prot_pid_lnk run tag @s add link_return
execute unless entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] run function enx_prot:player/default_player/menus/add/_anonymous1/_anonymous0
execute if entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] run function enx_prot:player/default_player/menus/add/_anonymous1/_anonymous1
tag @e remove link_return
