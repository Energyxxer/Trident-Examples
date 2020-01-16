execute if score SECOND enx_psnt_dye matches 0 run function enx_presents:present_item/set_ribbon_data/_anonymous0
execute if score SECOND enx_psnt_dye matches 1 run function enx_presents:present_item/set_ribbon_data/_anonymous1
execute if score SECOND enx_psnt_dye matches 2 run function enx_presents:present_item/set_ribbon_data/_anonymous2
execute if score SECOND enx_psnt_dye matches 3 run function enx_presents:present_item/set_ribbon_data/_anonymous3
execute if score SECOND enx_psnt_dye matches 4 run function enx_presents:present_item/set_ribbon_data/_anonymous4
execute if score SECOND enx_psnt_dye matches 5 run function enx_presents:present_item/set_ribbon_data/_anonymous5
execute if score SECOND enx_psnt_dye matches 6 run function enx_presents:present_item/set_ribbon_data/_anonymous6
execute if score SECOND enx_psnt_dye matches 7 run function enx_presents:present_item/set_ribbon_data/_anonymous7
execute if score SECOND enx_psnt_dye matches 8 run function enx_presents:present_item/set_ribbon_data/_anonymous8
execute if score SECOND enx_psnt_dye matches 9 run function enx_presents:present_item/set_ribbon_data/_anonymous9
execute if score SECOND enx_psnt_dye matches 10 run function enx_presents:present_item/set_ribbon_data/_anonymous10
execute if score SECOND enx_psnt_dye matches 11 run function enx_presents:present_item/set_ribbon_data/_anonymous11
execute if score SECOND enx_psnt_dye matches 12 run function enx_presents:present_item/set_ribbon_data/_anonymous12
execute if score SECOND enx_psnt_dye matches 13 run function enx_presents:present_item/set_ribbon_data/_anonymous13
execute if score SECOND enx_psnt_dye matches 14 run function enx_presents:present_item/set_ribbon_data/_anonymous14
execute if score SECOND enx_psnt_dye matches 15 run function enx_presents:present_item/set_ribbon_data/_anonymous15
scoreboard players add SECOND enx_psnt_dye 1
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get SECOND enx_psnt_dye
