execute if entity @s[tag=trident-component.enx_util.enx_psnt_unlinked] run kill @s
scoreboard players operation SEARCH enx_psnt_link = @s enx_psnt_link
execute as @e[tag=trident-component.enx_util.enx_psnt_id_holder] if score @s enx_psnt_id = SEARCH enx_psnt_link run tag @s add link_return
execute unless entity @e[tag=trident-component.enx_util.enx_psnt_id_holder,tag=link_return,limit=1] run kill @s
tag @e remove link_return
