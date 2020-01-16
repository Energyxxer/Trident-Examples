execute store result score PID_CHECK enx_prot_global run data get storage enx_prot:data Whitelist[0]
execute unless score PID_CHECK enx_prot_global = PLAYER_REMOVE enx_prot_global run data modify storage enx_prot:data NewWhitelist append from storage enx_prot:data Whitelist[0]
execute if score PID_CHECK enx_prot_global = PLAYER_REMOVE enx_prot_global run scoreboard players set ALREADY_LISTED enx_prot_global 1
data remove storage enx_prot:data Whitelist[0]
execute if data storage enx_prot:data Whitelist[0] run function enx_prot:player/default_player/menus/remove/_anonymous0/_anonymous0
