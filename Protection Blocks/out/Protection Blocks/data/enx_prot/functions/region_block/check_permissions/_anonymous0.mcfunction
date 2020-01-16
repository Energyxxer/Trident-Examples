execute store result score PID_CHECK enx_prot_global run data get storage enx_prot:data Whitelist[0]
data remove storage enx_prot:data Whitelist[0]
execute if score PID_CHECK enx_prot_global = PERMISSION_CHECK enx_prot_global run scoreboard players set PERMISSION_GRANTED enx_prot_global 1
execute if score IS_OWNER enx_prot_global matches -1 if score PERMISSION_GRANTED enx_prot_global matches 1 run scoreboard players set IS_OWNER enx_prot_global 1
execute if score IS_OWNER enx_prot_global matches -1 run scoreboard players set IS_OWNER enx_prot_global 0
execute if data storage enx_prot:data Whitelist[0] unless score PID_CHECK enx_prot_global = PERMISSION_CHECK enx_prot_global run function enx_prot:region_block/check_permissions/_anonymous0
