execute store result score PID_CHECK enx_prot_global run data get storage enx_prot:data Whitelist[0]
data remove storage enx_prot:data Whitelist[0]
execute as @a if score @s enx_prot_pid = PID_CHECK enx_prot_global run tag @s add enx_region_listed_player
execute if entity @a[tag=enx_region_listed_player] run tellraw @s ["    ",{"text":"\u00BB ","color":"green","hoverEvent":{"action":"show_text","value":"Online"}},{"selector":"@a[tag=enx_region_listed_player]","color":"yellow"}]
execute unless entity @a[tag=enx_region_listed_player] run tellraw @s ["    ",{"text":"\u00BB ","color":"red","hoverEvent":{"action":"show_text","value":"Offline"}},{"text":"Player ID ","color":"yellow"},{"score":{"name":"PID_CHECK","objective":"enx_prot_global"},"color":"yellow"},{"text":" \uFE56 ","color":"gray","hoverEvent":{"action":"show_text","value":"This player is not online, therefore\ntheir username is not available."}}]
tag @a remove enx_region_listed_player
execute if data storage enx_prot:data Whitelist[0] run function enx_prot:player/default_player/menus/list_members/_anonymous0
