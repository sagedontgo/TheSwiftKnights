$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[6] set value '{"color":"white","extra":[{"color":"red","text":" Maximum HP"}],"italic":false,"text":"+$(value)%"}'
data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat3 set value "maxHpPercentage"


tellraw @s [{"text":"SUB-STAT UNLOCKED\n","bold": true},{"text":"Maximum HP% ","color":"red","bold": false},{"score":{"name": "$tsk.subStatBuffValue","objective": "tsk.randomVal"},"bold":false}]