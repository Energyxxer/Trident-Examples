scoreboard players operation PLAYER_REMOVE enx_prot_global = @s region_remove
execute if score PLAYER_REMOVE enx_prot_global = @s enx_prot_pid run tellraw @s {"text":"You cannot remove yourself from the region!","color":"red"}
execute unless score PLAYER_REMOVE enx_prot_global = @s enx_prot_pid run function enx_prot:player/default_player/menus/remove/_anonymous0
scoreboard players reset @s region_remove
