scoreboard players set ALREADY_LISTED enx_prot_global 0
scoreboard players operation @s enx_prot_pid_lnk = @s region_remove
data modify storage enx_prot:data NewWhitelist set value []
execute if data storage enx_prot:data Whitelist[0] run function enx_prot:player/default_player/menus/remove/_anonymous0/_anonymous0
execute unless score ALREADY_LISTED enx_prot_global matches 1 run tellraw @s {"text":"That player is not whitelisted!","color":"red"}
execute if score ALREADY_LISTED enx_prot_global matches 1 run function enx_prot:player/default_player/menus/remove/_anonymous0/_anonymous1
