execute unless block ~ ~ ~ minecraft:note_block run function enx_note:noteblock/kill
execute if block ~ ~ ~ minecraft:note_block[powered=true] run tag @s[tag=!powered] add play
execute if block ~ ~ ~ minecraft:note_block[powered=true] run tag @s add powered
execute if block ~ ~ ~ minecraft:note_block[powered=false] run tag @s remove powered
execute if block ~ ~ ~ minecraft:note_block unless block ~ ~ ~ minecraft:note_block[note=0] run function enx_note:noteblock/interact
execute if entity @s[tag=play] run function enx_note:noteblock/play
execute if entity @s[tag=ui_open] run particle minecraft:ambient_entity_effect ~ ~ ~ 0.5 0.5 0.5 1 5
