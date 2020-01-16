execute as @e[tag=trident-component.enx_util.on_fire] run data modify entity @s Fire set value 10000s
schedule function enx_util:components/on_fire/refresh 10s
