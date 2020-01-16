scoreboard players set @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] enx_prot_pre_rid -1
tellraw @s [{"selector":"@e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1]","color":"aqua"},{"text":" has been removed from this region's whitelist!","color":"dark_aqua"}]
tag @s add region_owner_removed
tellraw @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1,type=minecraft:player] [{"text":"You have been removed from ","color":"dark_aqua"},{"selector":"@a[tag=region_owner_removed]","color":"aqua"},"'s region's whitelist!"]
tag @s remove region_owner_removed
