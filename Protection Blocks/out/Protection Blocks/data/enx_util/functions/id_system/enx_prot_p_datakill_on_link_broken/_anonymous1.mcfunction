execute if entity @s[tag=trident-component.enx_util.enx_prot_p_unlinked] run data merge entity @s {Health:0.0f,DeathTime:19s}
scoreboard players operation SEARCH enx_prot_pid_lnk = @s enx_prot_pid_lnk
execute as @e[tag=trident-component.enx_util.enx_prot_p_id_holder] if score @s enx_prot_pid = SEARCH enx_prot_pid_lnk run tag @s add link_return
execute unless entity @e[tag=trident-component.enx_util.enx_prot_p_id_holder,tag=link_return,limit=1] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e remove link_return
