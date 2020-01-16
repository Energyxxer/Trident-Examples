data modify storage enx_presents:data player set from entity @s {}
execute if data storage enx_presents:data player.Inventory[{Slot:100b,tag:{TridentCustomItem:1580266985}}] run function enx_presents:present_item/default_player/present_boots_test/unequip
data remove storage enx_presents:data player
