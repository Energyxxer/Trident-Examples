execute if score @s enx_prot_tier matches 1 as @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] at @s run function enx_prot:region_block/give/1
execute if score @s enx_prot_tier matches 2 as @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] at @s run function enx_prot:region_block/give/2
execute if score @s enx_prot_tier matches 3 as @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] at @s run function enx_prot:region_block/give/3
execute if score @s enx_prot_tier matches 4 as @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] at @s run function enx_prot:region_block/give/4
execute if score @s enx_prot_tier matches 5 as @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] at @s run function enx_prot:region_block/give/5
kill @s
