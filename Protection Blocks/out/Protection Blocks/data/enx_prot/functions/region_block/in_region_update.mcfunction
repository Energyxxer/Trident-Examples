tag @a add trident-component.enx_util.enx_prot_p_id_holder
execute as @a run scoreboard players set @s enx_prot_in_rid -1
execute as @e[type=minecraft:armor_stand,tag=trident-entity.enx_prot.region_block] at @s run function enx_prot:region_block/in_update_region
execute as @a run function enx_prot:region_block/default_player/in_update_region
