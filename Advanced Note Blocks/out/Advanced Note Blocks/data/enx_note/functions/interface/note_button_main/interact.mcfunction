scoreboard players operation SEARCH enx_note_link = @s enx_note_link
execute as @e[tag=trident-component.enx_util.enx_note_id_holder] if score @s enx_note_id = SEARCH enx_note_link run tag @s add link_return
execute if entity @e[tag=trident-component.enx_util.enx_note_id_holder,tag=link_return,limit=1,tag=change_note] run tag @s add was_note
execute if entity @s[tag=was_note] run tag @e[tag=trident-component.enx_util.enx_note_id_holder,tag=link_return,limit=1] remove change_note
execute if entity @s[tag=was_note] run data modify entity @s CustomName set value "[{\"text\":\"<\",\"color\":\"dark_gray\"},{\"text\":\"Instrument\",\"color\":\"light_purple\"},\">\"]"
execute unless entity @s[tag=was_note] run tag @e[tag=trident-component.enx_util.enx_note_id_holder,tag=link_return,limit=1] add change_note
execute unless entity @s[tag=was_note] run data modify entity @s CustomName set value "[{\"text\":\"<\",\"color\":\"dark_gray\"},{\"text\":\"Note\",\"color\":\"green\"},\">\"]"
tag @s remove was_note
tag @e remove link_return
