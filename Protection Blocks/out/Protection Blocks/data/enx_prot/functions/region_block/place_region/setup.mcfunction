execute store result score NEW enx_prot_tier run data get entity @s ArmorItems[0].tag.PlaceRegionTier
scoreboard players operation NEW_OWNER enx_prot_global = @p[scores={enx_prot_place=1..},distance=..8] enx_prot_pid
scoreboard players set OVERLAPPING enx_prot_global 0
execute if score NEW enx_prot_tier matches 1 run function enx_prot:region_block/place_region/setup/_anonymous0
execute if score NEW enx_prot_tier matches 2 run function enx_prot:region_block/place_region/setup/_anonymous1
execute if score NEW enx_prot_tier matches 3 run function enx_prot:region_block/place_region/setup/_anonymous2
execute if score NEW enx_prot_tier matches 4 run function enx_prot:region_block/place_region/setup/_anonymous3
execute if score NEW enx_prot_tier matches 5 run function enx_prot:region_block/place_region/setup/_anonymous4
execute unless score OVERLAPPING enx_prot_global matches 1 run function enx_prot:region_block/summon
execute if score OVERLAPPING enx_prot_global matches 1 run function enx_prot:region_block/place_region/setup/_anonymous5
kill @s
