tag @s remove interact
tag @s remove ui_open
scoreboard players operation SEARCH enx_note_link = @s enx_note_id
execute as @e[tag=trident-component.enx_util.enx_note_link_holder] if score @s enx_note_link = SEARCH enx_note_link run tag @s add link_return
tag @e[tag=trident-component.enx_util.enx_note_link_holder,tag=link_return] add trident-component.enx_util.enx_note_unlinked
tag @e remove link_return
