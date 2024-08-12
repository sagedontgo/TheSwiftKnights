$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[5] set value '{"color":"white","extra":[{"color":"green","text":" DEF"}],"italic":false,"text":"+$(value)"}'
data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat2 set value "defFlat"


tellraw @s [{"text":"SUB-STAT UNLOCKED\n","bold": true},{"text":"DEF ","color":"green","bold": false},{"score":{"name": "$tsk.subStatBuffValue","objective": "tsk.randomVal"},"bold":false}]