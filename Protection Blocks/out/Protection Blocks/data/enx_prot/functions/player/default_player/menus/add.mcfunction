scoreboard players operation PLAYER_ADD enx_prot_global = @s region
scoreboard players set ALREADY_LISTED enx_prot_global 0
scoreboard players operation @s enx_prot_pid_lnk = @s region
execute if data storage enx_prot:data Whitelist[0] run function enx_prot:player/default_player/menus/add/_anonymous0
execute if score ALREADY_LISTED enx_prot_global matches 1 run tellraw @s {"text":"That player is already whitelisted!","color":"red"}
execute unless score ALREADY_LISTED enx_prot_global matches 1 run function enx_prot:player/default_player/menus/add/_anonymous1
scoreboard players reset @s region
