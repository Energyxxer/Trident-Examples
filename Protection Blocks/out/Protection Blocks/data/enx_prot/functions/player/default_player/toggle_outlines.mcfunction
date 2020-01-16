tag @s[tag=trident-component.enx_prot.view_regions] add was_enabled
tag @s add trident-component.enx_prot.view_regions
tag @s[tag=was_enabled] remove trident-component.enx_prot.view_regions
tag @s remove was_enabled
title @a[tag=!trident-component.enx_prot.view_regions] actionbar [{"text":"Region outlines have been ","color":"gold"},{"text":"DISABLED","color":"red","bold":true}]
title @a[tag=trident-component.enx_prot.view_regions] actionbar [{"text":"Region outlines have been ","color":"gold"},{"text":"ENABLED","color":"green","bold":true}]
scoreboard players reset @s enx_prot_ui
