execute if entity @s[tag=trident-component.enx_util.enx_note_unlinked] run kill @s
scoreboard players operation SEARCH enx_note_link = @s enx_note_link
execute as @e[tag=trident-component.enx_util.enx_note_id_holder] if score @s enx_note_id = SEARCH enx_note_link run tag @s add link_return
execute unless entity @e[tag=trident-component.enx_util.enx_note_id_holder,tag=link_return,limit=1] run kill @s
tag @e remove link_return
