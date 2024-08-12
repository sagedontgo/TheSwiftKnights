$execute as @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] if entity @s[nbt={data:{gui:[[{Slot:22b,components:{"minecraft:custom_data":{tsk:{item:"upgradeItem"}}}}]]}}] run data modify entity @s data.gui.[].[22].components."minecraft:lore" append value '{"text":"UPGRADE COST: $(value)"}'

function ajjgui:_reload
# /data get entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui[].[22]