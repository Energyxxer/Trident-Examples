particle minecraft:bubble ~ ~ ~ 0 0 0 1 5 force
scoreboard players add @s enx_sub_anim 1
scoreboard players add @s enx_sub_life 1
scoreboard players set @s[scores={enx_sub_anim=2..}] enx_sub_anim 0
tp @s[scores={enx_sub_anim=0}] ^ ^ ^0.5 ~ ~1
tp @s[scores={enx_sub_anim=1}] ^ ^ ^0.5 ~ ~-1
execute if score @s enx_sub_life matches 4.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!trident-component.enx_sub.torpedo_immune,dx=1,dy=1,dz=1] positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function enx_sub:torpedo/detonate
execute if entity @s unless predicate enx_sub:trident-generated/predicate/0 run function enx_sub:torpedo/detonate
kill @s[scores={enx_sub_life=600..}]
