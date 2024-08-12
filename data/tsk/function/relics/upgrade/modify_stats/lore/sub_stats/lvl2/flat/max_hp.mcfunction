$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[4] set value '{"color":"white","extra":[{"color":"red","text":" MAX HP"}],"italic":false,"text":"+$(value)"}'
data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat1 set value "maxHpFlat"


tellraw @s [{"text":"SUB-STAT UNLOCKED\n","bold": true},{"text":"MAX HP ","color":"red","bold": false},{"score":{"name": "$tsk.subStatBuffValue","objective": "tsk.randomVal"},"bold":false}]