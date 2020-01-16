scoreboard players add @s enx_sub_anim 1
scoreboard players set @s[scores={enx_sub_anim=5..}] enx_sub_anim 0
replaceitem entity @s[scores={enx_sub_anim=0}] weapon.mainhand minecraft:music_disc_13{CustomModelData:4}
replaceitem entity @s[scores={enx_sub_anim=1}] weapon.mainhand minecraft:music_disc_13{CustomModelData:5}
replaceitem entity @s[scores={enx_sub_anim=2}] weapon.mainhand minecraft:music_disc_13{CustomModelData:6}
replaceitem entity @s[scores={enx_sub_anim=3}] weapon.mainhand minecraft:music_disc_13{CustomModelData:7}
replaceitem entity @s[scores={enx_sub_anim=4}] weapon.mainhand minecraft:music_disc_13{CustomModelData:8}
execute at @s positioned ~ ~1.4 ~ run particle minecraft:bubble ^ ^ ^-5 0 0 0 1 18
tag @s remove animate
