tag @s add trident-component.enx_presents.present_closed
data modify entity @s ArmorItems[0] set from storage enx_presents:data CaptureItem
data modify entity @s ArmorItems[3].tag.CustomModelData set value 17
scoreboard players operation SEARCH enx_psnt_link = @s enx_psnt_id
execute as @e[tag=trident-component.enx_util.enx_psnt_link_holder] if score @s enx_psnt_link = SEARCH enx_psnt_link run tag @s add link_return
data modify entity @e[tag=trident-component.enx_util.enx_psnt_link_holder,tag=link_return,type=minecraft:armor_stand,tag=trident-entity.enx_presents.present_ribbon,limit=1] ArmorItems[3].tag.CustomModelData set value 18
tag @e remove link_return
playsound minecraft:item.armor.equip_generic master @a
