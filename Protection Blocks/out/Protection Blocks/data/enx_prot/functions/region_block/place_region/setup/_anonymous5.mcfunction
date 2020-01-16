execute if score NEW enx_prot_tier matches 1 as @p[scores={enx_prot_place=1..},distance=..8] run function enx_prot:region_block/give/1
execute if score NEW enx_prot_tier matches 2 as @p[scores={enx_prot_place=1..},distance=..8] run function enx_prot:region_block/give/2
execute if score NEW enx_prot_tier matches 3 as @p[scores={enx_prot_place=1..},distance=..8] run function enx_prot:region_block/give/3
execute if score NEW enx_prot_tier matches 4 as @p[scores={enx_prot_place=1..},distance=..8] run function enx_prot:region_block/give/4
execute if score NEW enx_prot_tier matches 5 as @p[scores={enx_prot_place=1..},distance=..8] run function enx_prot:region_block/give/5
title @p[scores={enx_prot_place=1..},distance=..8] actionbar [{"text":"Overlapping regions are not allowed!","color":"red"}]
