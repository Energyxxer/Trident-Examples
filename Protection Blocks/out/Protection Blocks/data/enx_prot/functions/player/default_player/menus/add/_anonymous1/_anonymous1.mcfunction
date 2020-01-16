scoreboard players set @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] enx_prot_pre_rid -1
execute store result storage enx_prot:data Temp int 1 run scoreboard players get PLAYER_ADD enx_prot_global
data modify entity @e[tag=trident-component.enx_util.enx_prot_r_id_holder,tag=link_return,limit=1] ArmorItems[0].tag.RegionWhitelist append from storage enx_prot:data Temp
tellraw @s [{"selector":"@e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1]","color":"aqua"},{"text":" has been added to this region's whitelist!","color":"dark_aqua"}]
tag @s add region_owner_added
tellraw @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1,type=minecraft:player] [{"text":"You have been added to ","color":"dark_aqua"},{"selector":"@a[tag=region_owner_added]","color":"aqua"},"'s region's whitelist!"]
tag @s remove region_owner_added
