tag @s add interact
tag @s add play
setblock ~ ~ ~ minecraft:note_block[note=0]
execute if entity @s[tag=interact,tag=ui_open] run function enx_note:noteblock/interact/_anonymous0
execute if entity @s[tag=interact,tag=!ui_open] run function enx_note:noteblock/interact/_anonymous1
