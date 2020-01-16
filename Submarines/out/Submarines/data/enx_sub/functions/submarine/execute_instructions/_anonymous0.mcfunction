summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["enx_sub_forward_calc"]}
execute as @e[type=minecraft:area_effect_cloud,tag=enx_sub_forward_calc,limit=1,distance=0..0.01] run function enx_sub:submarine/execute_instructions/_anonymous0/_anonymous0
