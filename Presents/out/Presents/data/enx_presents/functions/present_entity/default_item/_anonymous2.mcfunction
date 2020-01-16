data modify storage enx_presents:data CaptureItem set from entity @s Item
execute as @e[type=minecraft:armor_stand,tag=trident-entity.enx_presents.present_box,tag=!trident-component.enx_presents.present_closed,distance=..0.5,limit=1] run function enx_presents:present_entity/present_box/capture_item
kill @s
