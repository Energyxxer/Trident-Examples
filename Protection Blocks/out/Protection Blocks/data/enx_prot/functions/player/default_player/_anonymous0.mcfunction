scoreboard players add @s[scores={enx_prot_place=1..2}] enx_prot_place 1
scoreboard players set @s[scores={enx_prot_place=3..}] enx_prot_place 0
scoreboard players add @s[scores={enx_prot_opdropp=1..2}] enx_prot_opdropp 1
scoreboard players set @s[scores={enx_prot_opdropp=3..}] enx_prot_opdropp 0
scoreboard players enable @s enx_prot_ui
scoreboard players enable @s region
scoreboard players enable @s region_remove
execute if score @s region matches ..2147483647 unless score @s region matches 0 run scoreboard players set @s enx_prot_ui 5
execute if score @s region_remove matches ..2147483647 unless score @s region_remove matches 0 run scoreboard players set @s enx_prot_ui 6
