execute if block ~ ~1 ~ minecraft:moving_piston run setblock ~ ~1 ~ minecraft:air
data modify entity @e[type=minecraft:item,distance=..3,nbt={Age:0s,PickupDelay:10s,Item:{id:"minecraft:note_block",Count:1b}},limit=1] Item merge value {tag:{TridentCustomItem:-1063606413,EntityTag:{Tags:["spawn_enx_note_block"],Invisible:1b,NoGravity:1b},Enchantments:[{}],display:{Name:"{\"text\":\"Advanced Note Block\",\"italic\":false}"}},id:"minecraft:armor_stand",Count:1b}
kill @s
