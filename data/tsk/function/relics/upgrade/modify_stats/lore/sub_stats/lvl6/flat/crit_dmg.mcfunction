$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[6] set value '{"color":"white","extra":[{"color":"gold","text":" Crit DMG"}],"italic":false,"text":"+$(value)"}'
data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat3 set value "criticDamageFlat"


tellraw @s [{"text":"SUB-STAT UNLOCKED\n","bold": true},{"text":"Crit DMG% ","color":"gold","bold": false},{"score":{"name": "$tsk.subStatBuffValue","objective": "tsk.randomVal"},"bold":false}]