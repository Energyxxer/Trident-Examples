execute if entity @s[tag=trident-component.enx_util.enx_note_id_holder] unless score @s enx_note_id matches ..2147483647 run function enx_util:id_system/enx_note_id_holder/set_id
execute if entity @s[tag=trident-component.enx_util.enx_note_kill_on_link_broken] if score @s enx_note_link matches ..2147483647 run function enx_util:id_system/enx_note_kill_on_link_broken/_anonymous0
execute if entity @s[tag=trident-component.enx_util.enx_note_datakill_on_link_broken] if score @s enx_note_link matches ..2147483647 run function enx_util:id_system/enx_note_datakill_on_link_broken/_anonymous1
