execute as @e[type=minecraft:item,dx=0,dy=1,dz=0] if score @s enx_psnt_c_index = FIRST enx_psnt_c_index run kill @s
execute as @e[type=minecraft:item,dx=0,dy=1,dz=0] if score @s enx_psnt_op = SECOND enx_psnt_c_index run kill @s
tag @s add crafted
data merge entity @s {Item:{id:"minecraft:leather_boots",tag:{TridentCustomItem:1580266985,display:{Lore:["\"\"","\"\"","[{\"text\":\"Use: \",\"color\":\"dark_aqua\",\"italic\":false},{\"text\":\"Drop to place down\",\"color\":\"white\"}]"]},HideFlags:63,Present:{}}}}
function enx_presents:present_item/set_box_data
function enx_presents:present_item/set_ribbon_data
