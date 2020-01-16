execute if data block ~ ~ ~ Items[0] run function enx_prot:region_block/_anonymous0/_anonymous0/eject_items
setblock ~ ~ ~ minecraft:bedrock
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"\"Opening Region GUI...\"",LootTable:"minecraft:empty"}
scoreboard players set @a[scores={enx_prot_opdropp=1..},distance=..6] enx_prot_ui 1
