function enx_ptng:trident/prepare_held_items
scoreboard players set #CUSTOM_CONSUMED trident_global 0
execute if entity @s[scores={oldtdci_held=-700894968,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_wanderer/_anonymous18
execute if entity @s[scores={oldtdci_held=347527383,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_wasteland/_anonymous2
execute if entity @s[scores={oldtdci_held=715633559,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_match/_anonymous22
execute if entity @s[scores={oldtdci_held=718713917,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_plant/_anonymous14
execute if entity @s[scores={oldtdci_held=-1690315118,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_donkey_kong/_anonymous6
execute if entity @s[scores={oldtdci_held=716880436,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_creebet/_anonymous19
execute if entity @s[scores={oldtdci_held=-1223559806,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_void/_anonymous3
execute if entity @s[scores={oldtdci_held=646156602,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_courbet/_anonymous12
execute if entity @s[scores={oldtdci_held=-712381553,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_pointer/_anonymous24
execute if entity @s[scores={oldtdci_held=1003488353,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_wither/_anonymous13
execute if entity @s[scores={oldtdci_held=-1223738358,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_pool/_anonymous5
execute if entity @s[scores={oldtdci_held=-1224149534,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_bust/_anonymous11
execute if entity @s[scores={oldtdci_held=899885828,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_sunset/_anonymous7
execute if entity @s[scores={oldtdci_held=553167468,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_graham/_anonymous4
execute if entity @s[scores={oldtdci_held=-1182060637,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_burning_skull/_anonymous16
execute if entity @s[scores={oldtdci_held=721722576,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_stage/_anonymous10
execute if entity @s[scores={oldtdci_held=704861654,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_alban/_anonymous8
execute if entity @s[scores={oldtdci_held=-1224155504,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_bomb/_anonymous21
execute if entity @s[scores={oldtdci_held=-1950079932,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_fighters/_anonymous23
execute if entity @s[scores={oldtdci_held=389343879,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_aztec2/_anonymous15
execute if entity @s[scores={oldtdci_held=713888315,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_kebab/_anonymous20
execute if entity @s[scores={oldtdci_held=1097000332,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_skull_and_roses/_anonymous9
execute if entity @s[scores={oldtdci_held=952628539,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_skeleton/_anonymous1
execute if entity @s[scores={oldtdci_held=705296139,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_aztec/_anonymous0
execute if entity @s[scores={oldtdci_held=-1692193620,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_pigscene/_anonymous25
execute if entity @s[scores={oldtdci_held=376169121,uitem.-91ff582=1..}] as @e[type=minecraft:painting,sort=nearest,tag=!processed,limit=1] at @s run function enx_ptng:items/painting_sea/_anonymous17
execute if entity @s[scores={uitem.-91ff582=1..}] run function enx_ptng:items/default_painting/_anonymous27
scoreboard players reset @s[scores={uitem.-91ff582=1..}] uitem.-91ff582
execute if entity @s[scores={ditem.-91ff582=1..}] run function enx_ptng:items/default_painting/_anonymous26
scoreboard players reset @s[scores={ditem.-91ff582=1..}] ditem.-91ff582
function enx_ptng:trident/save_held_items
