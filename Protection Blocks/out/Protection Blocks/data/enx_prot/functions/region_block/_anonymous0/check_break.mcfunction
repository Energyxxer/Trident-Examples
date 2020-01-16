execute store result score @s enx_prot_pid_lnk run data get entity @s ArmorItems[0].tag.RegionWhitelist[0]
scoreboard players operation SEARCH enx_prot_pid_lnk = @s enx_prot_pid_lnk
execute as @e[tag=trident-component.enx_util.enx_prot_p_id_holder] if score @s enx_prot_pid = SEARCH enx_prot_pid_lnk run tag @s add link_return
execute unless entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1,distance=..6] run setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"\"Opening Region GUI...\"",LootTable:"minecraft:empty"}
execute unless entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1,distance=..6] if entity @a[distance=..6] run tellraw @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1,type=minecraft:player] [{"text":"Warning: ","color":"gold"},{"selector":"@a[distance=..6]","color":"yellow"}," tried to destroy your region block at ",{"nbt":"x","block":"~ ~ ~"}," ",{"nbt":"y","block":"~ ~ ~"}," ",{"nbt":"z","block":"~ ~ ~"}," "]
execute if entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1,distance=..6] run function enx_prot:region_block/_anonymous0/check_break/break
tag @e remove link_return
kill @e[type=minecraft:item,distance=..6,nbt={Age:0s,PickupDelay:10s,Item:{id:"minecraft:dropper",tag:{display:{Name:"{\"text\":\"Opening Region GUI...\"}"}}}},limit=1]
