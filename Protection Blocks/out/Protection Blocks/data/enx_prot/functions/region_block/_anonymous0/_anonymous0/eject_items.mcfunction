data modify storage enx_prot:data DropperItems set from block ~ ~ ~ Items
summon minecraft:chest_minecart ~ ~ ~ {CustomName:"\"$$REGION_DROPPER_ITEMS$$\"",Tags:["region_dropper_eject"]}
execute as @e[type=minecraft:chest_minecart,tag=region_dropper_eject,limit=1,distance=0..0.01] run function enx_prot:region_block/_anonymous0/_anonymous0/eject_items/_anonymous0
