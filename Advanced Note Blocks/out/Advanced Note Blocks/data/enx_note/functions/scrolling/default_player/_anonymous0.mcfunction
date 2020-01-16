execute store result score @s enx_note_slot run data get entity @s SelectedItemSlot
scoreboard players operation @s enx_note_op = @s enx_note_slotpre
scoreboard players operation @s enx_note_op -= @s enx_note_slot
scoreboard players remove @s[scores={enx_note_op=5..}] enx_note_op 9
scoreboard players add @s[scores={enx_note_op=..-5}] enx_note_op 9
execute unless score @s enx_note_op matches 0 run tag @s add note_display_target
scoreboard players operation CHANGE enx_note = @s enx_note_op
execute unless score CHANGE enx_note matches 0 as @e[type=minecraft:armor_stand,tag=trident-entity.enx_note.noteblock,tag=ui_open,distance=..64,sort=furthest] run function enx_note:scrolling/default_player/_anonymous0/change
tag @s remove note_display_target
scoreboard players operation @s enx_note_slotpre = @s enx_note_slot
