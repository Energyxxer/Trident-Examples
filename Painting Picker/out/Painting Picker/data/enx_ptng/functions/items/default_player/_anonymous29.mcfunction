execute unless entity @s[nbt={SelectedItem:{id:"minecraft:painting"}}] run tellraw @s {"text":"You're not holding any paintings!","color":"red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:painting"}}] run function enx_ptng:items/default_player/_anonymous29/_anonymous0
scoreboard players set @s painting_get 0
