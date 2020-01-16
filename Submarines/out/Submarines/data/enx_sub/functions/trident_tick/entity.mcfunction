execute if entity @s[type=minecraft:armor_stand,tag=trident-entity.enx_sub.torpedo] run function enx_sub:torpedo/_anonymous0
execute if entity @s[type=minecraft:minecart,tag=trident-entity.enx_sub.submarine_seat] run function enx_sub:submarine/submarine_seat/_anonymous0
execute if entity @s[type=minecraft:item] if entity @s[nbt={Age:0s,Item:{id:"minecraft:minecart",Count:1b,tag:{display:{Name:"{\"text\":\"$$SUBMARINE_SEAT$$\"}"}}}}] run function enx_sub:submarine/default_item/_anonymous1
execute if entity @s[type=minecraft:item] if entity @s[tag=!sub_dropped,nbt={Item:{tag:{TridentCustomItem:-1316243718}}}] if predicate enx_sub:trident-generated/predicate/0 positioned ~ ~2 ~ if predicate enx_sub:trident-generated/predicate/0 positioned ~ ~-2 ~ run function enx_sub:submarine/default_item/_anonymous2
execute if entity @s[type=minecraft:item] if entity @s[nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run function enx_sub:submarine/default_item/_anonymous3
execute if entity @s[type=minecraft:armor_stand,tag=trident-entity.enx_sub.submarine] run function enx_sub:submarine/_anonymous4
execute if entity @s[type=minecraft:player] if entity @s[nbt={RootVehicle:{Entity:{Tags:["trident-entity.enx_sub.submarine"]}}}] run function enx_sub:submarine_rider/default_player/in_sub_tick
