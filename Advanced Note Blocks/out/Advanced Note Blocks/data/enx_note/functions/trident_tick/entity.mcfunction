execute if entity @s[type=minecraft:area_effect_cloud,tag=trident-entity.enx_note.note_button] run function enx_note:buttons/note_button/_anonymous0
execute if entity @s[tag=trident-component.enx_note.note_button_main] if entity @s[tag=interact] run function enx_note:interface/note_button_main/interact
execute if entity @s[type=minecraft:armor_stand,tag=trident-entity.enx_note.noteblock] if entity @s[tag=new,scores={enx_note_id=..2147483647}] run function enx_note:noteblock/init
execute if entity @s[type=minecraft:armor_stand,tag=trident-entity.enx_note.noteblock] if entity @s[tag=!new] run function enx_note:noteblock/tick
execute if entity @s[type=minecraft:player] run function enx_note:scrolling/default_player/_anonymous0
