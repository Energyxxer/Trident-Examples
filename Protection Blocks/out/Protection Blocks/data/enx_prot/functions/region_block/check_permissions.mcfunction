scoreboard players set PERMISSION_GRANTED enx_prot_global 0
scoreboard players set IS_OWNER enx_prot_global -1
data modify storage enx_prot:data Whitelist set from entity @s ArmorItems[0].tag.RegionWhitelist
execute if data storage enx_prot:data Whitelist[0] run function enx_prot:region_block/check_permissions/_anonymous0
execute if score IS_OWNER enx_prot_global matches -1 run scoreboard players set IS_OWNER enx_prot_global 0
