particle minecraft:large_smoke ~ ~ ~ 2 2 2 0.25 5
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.splash master @a ~ ~ ~ 2 0.5
execute positioned ~ ~1.2 ~ run summon minecraft:armor_stand ^-1 ^ ^1 {CustomName:"\"Torpedo\"",Invisible:1b,Invulnerable:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{tag:{CustomModelData:2},id:"minecraft:music_disc_13",Count:1b}],Tags:["trident-entity.enx_sub.torpedo","trident-component.enx_sub.torpedo_immune","new"]}
execute positioned ~ ~1.2 ~ run summon minecraft:armor_stand ^1 ^ ^1 {CustomName:"\"Torpedo\"",Invisible:1b,Invulnerable:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{tag:{CustomModelData:2},id:"minecraft:music_disc_13",Count:1b}],Tags:["trident-entity.enx_sub.torpedo","trident-component.enx_sub.torpedo_immune","new"]}
execute rotated as @s as @e[type=minecraft:armor_stand,tag=trident-entity.enx_sub.torpedo,tag=new] positioned as @s run function enx_sub:submarine/execute_instructions/launch_torpedo/_anonymous0
