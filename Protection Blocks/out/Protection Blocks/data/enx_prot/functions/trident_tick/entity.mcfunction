execute if entity @s[type=minecraft:armor_stand,tag=trident-entity.enx_prot.region_block] run function enx_prot:region_block/_anonymous0
execute if entity @s[type=minecraft:armor_stand,tag=trident-entity.enx_prot.region_block] run function enx_prot:region_block/outline
execute if entity @s[type=minecraft:armor_stand,tag=trident-entity.enx_prot.place_region] run function enx_prot:region_block/place_region/setup
execute if entity @s[type=minecraft:player] run function enx_prot:player/default_player/_anonymous0
execute if entity @s[type=minecraft:player] unless score @s enx_prot_ui matches 0 unless score @s enx_prot_ui matches 4 run function enx_prot:player/default_player/menus
execute if entity @s[type=minecraft:player] if score @s enx_prot_ui matches 4 run function enx_prot:player/default_player/toggle_outlines
execute if entity @s[type=minecraft:item] if block ~ ~-1 ~ minecraft:crafting_table if entity @s[nbt={Item:{id:"minecraft:repeater",Count:1b}}] align xyz run function enx_prot:crafting/default_item/_anonymous0
