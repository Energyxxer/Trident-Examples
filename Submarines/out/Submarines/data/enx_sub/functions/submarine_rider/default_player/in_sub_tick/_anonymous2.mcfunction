scoreboard players operation SECONDS enx_sub_op = @s enx_sub_cooldown
scoreboard players operation SECONDS_DIV_10 enx_sub_op = @s enx_sub_cooldown
scoreboard players operation SECONDS enx_sub_op /= #20 trident_const
scoreboard players operation SECONDS_DIV_10 enx_sub_op %= #20 trident_const
scoreboard players operation SECONDS_DIV_10 enx_sub_op *= #5 trident_const
scoreboard players operation SECONDS_DIV_100 enx_sub_op = SECONDS_DIV_10 enx_sub_op
scoreboard players operation SECONDS_DIV_10 enx_sub_op /= #10 trident_const
scoreboard players operation SECONDS_DIV_100 enx_sub_op %= #10 trident_const
title @s actionbar ["",{"text":"COOLDOWN ","color":"red"},{"text":"[ ","color":"gray"},{"text":"||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"}," ",{"score":{"name":"SECONDS","objective":"enx_sub_op"}},".",{"score":{"name":"SECONDS_DIV_10","objective":"enx_sub_op"}},{"score":{"name":"SECONDS_DIV_100","objective":"enx_sub_op"}},"s ",{"text":"||||||||||||||||||||||||||||||||||||||||","color":"dark_gray"},{"text":" ]             ","color":"gray"}]
scoreboard players remove @s enx_sub_cooldown 1
