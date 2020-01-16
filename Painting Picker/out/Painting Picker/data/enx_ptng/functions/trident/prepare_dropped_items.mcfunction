tag @e[type=minecraft:item] remove tdci_dropped
execute as @e[type=minecraft:item,nbt={Age:0s,PickupDelay:40s}] if data entity @s Item.tag.TridentCustomItem if data entity @s Thrower run tag @s add tdci_dropped
