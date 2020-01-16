tag @s remove new_present
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get BOX_COLOR enx_psnt_global
data modify entity @s ArmorItems[1] set from storage enx_presents:data PresentItem
data modify entity @s Pose set from storage enx_presents:data RandomRotation
function enx_util:id_system/enx_psnt_id_holder/set_id
scoreboard players operation PARENT enx_psnt_link = @s enx_psnt_id
execute as @e[type=minecraft:armor_stand,tag=trident-entity.enx_presents.present_ribbon,distance=..0.1,tag=trident-component.enx_util.enx_psnt_unlinked,limit=1] run function enx_presents:present_entity/_anonymous7/_anonymous0
execute as @e[type=minecraft:slime,tag=trident-entity.enx_presents.present_hitbox,distance=..0.1,tag=trident-component.enx_util.enx_psnt_unlinked,limit=1] run function enx_util:id_system/enx_psnt_link_holder/set_link
