execute store result score BOX_COLOR enx_psnt_global run data get entity @s Item.tag.Present.BoxColor
execute store result score RIBBON_COLOR enx_psnt_global run data get entity @s Item.tag.Present.RibbonColor
data modify storage enx_presents:data PresentItem set from entity @s Item
data modify storage enx_presents:data RandomRotation set value {Head:[0.0f,0.0f,0.0f]}
data modify storage enx_presents:data RandomRotation.Head[1] set from entity @s Rotation[0]
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Present Box\"",Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{tag:{CustomModelData:19},id:"minecraft:leather_boots",Count:1b}],Passengers:[{Tags:["trident-entity.enx_presents.present_ribbon","trident-component.enx_util.enx_psnt_kill_on_link_broken","trident-component.enx_util.enx_psnt_link_holder","trident-component.enx_util.enx_psnt_unlinked"],CustomName:"\"Present Ribbon\"",Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{tag:{CustomModelData:20},id:"minecraft:leather_boots",Count:1b}],id:"minecraft:armor_stand"},{Tags:["trident-entity.enx_presents.present_hitbox","trident-component.enx_util.invisible","trident-component.enx_util.enx_psnt_datakill_on_link_broken","trident-component.enx_util.enx_psnt_link_holder","trident-component.enx_util.enx_psnt_unlinked"],CustomName:"\"Present Hitbox\"",ActiveEffects:[{Id:14b,Duration:200000,Amplifier:0b,ShowParticles:0b},{Id:11b,Duration:2147483647,Amplifier:9b,ShowParticles:0b}],Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,id:"minecraft:slime"}],Tags:["trident-entity.enx_presents.present_box","trident-component.enx_util.enx_psnt_id_holder","new_present"]}
execute as @e[type=minecraft:armor_stand,tag=trident-entity.enx_presents.present_box,tag=new_present,limit=1,distance=0..0.01] run function enx_presents:present_entity/_anonymous7
kill @s
