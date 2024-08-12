$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[5] set value '{"color":"white","extra":[{"color":"gold","text":" Stomach Capacity"}],"italic":false,"text":"+$(value)"}'
data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat2 set value "scFlat"


tellraw @s [{"text":"SUB-STAT UNLOCKED\n","bold": true},{"text":"Stomach Capacity ","color":"gold","bold": false},{"score":{"name": "$tsk.subStatBuffValue","objective": "tsk.randomVal"},"bold":false}]