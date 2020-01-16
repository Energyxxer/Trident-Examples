execute store result score PID_CHECK enx_prot_global run data get storage enx_prot:data Whitelist[0]
data remove storage enx_prot:data Whitelist[0]
execute if score PID_CHECK enx_prot_global = PLAYER_ADD enx_prot_global run scoreboard players set ALREADY_LISTED enx_prot_global 1
execute if data storage enx_prot:data Whitelist[0] unless score PID_CHECK enx_prot_global = PLAYER_ADD enx_prot_global run function enx_prot:player/default_player/menus/add/_anonymous0
