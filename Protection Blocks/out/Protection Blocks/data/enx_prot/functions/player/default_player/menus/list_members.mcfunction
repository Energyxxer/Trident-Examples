tellraw @s ["\n",{"text":"  Whitelisted Players:","color":"aqua","bold":true}]
execute if data storage enx_prot:data Whitelist[0] run function enx_prot:player/default_player/menus/list_members/_anonymous0
