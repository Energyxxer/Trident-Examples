kill @e[type=minecraft:item,tag=sub_crafting,dx=0,dy=0,dz=0]
data modify entity @s Item set value {tag:{TridentCustomItem:-1316243718,CustomModelData:1,HideFlags:63,display:{Name:"{\"text\":\"Submarine\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"Drop on water to spawn\",\"color\":\"gray\",\"italic\":false}"]}},id:"minecraft:music_disc_13",Count:1b}
tag @s add sub_dropped
playsound minecraft:block.anvil.use master @a
