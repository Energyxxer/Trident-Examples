scoreboard players operation @s[tag=change_note] enx_note += CHANGE enx_note
scoreboard players operation @s[tag=!change_note] enx_note_instr += CHANGE enx_note
scoreboard players set @s[scores={enx_note=50..}] enx_note -25
scoreboard players set @s[scores={enx_note_instr=16..}] enx_note_instr 0
scoreboard players set @s[scores={enx_note=..-26}] enx_note 49
scoreboard players set @s[scores={enx_note_instr=..-1}] enx_note_instr 15
execute if entity @s[tag=change_note] run scoreboard players operation DISPLAY enx_note = @s enx_note
execute if entity @s[tag=change_note] run function enx_note:display/note
execute if entity @s[tag=!change_note] run scoreboard players operation DISPLAY enx_note_instr = @s enx_note_instr
execute if entity @s[tag=!change_note] run function enx_note:display/instrument
tag @s add play
