$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[4] set value '{"color":"white","extra":[{"color":"red","text":" MAX HP"}],"italic":false,"text":"+$(value)"}'


tellraw @s [{"text":"MAX HP ","color":"red","bold": false},{"score":{"name": "$tsk.oldLevel.sub1","objective": "tsk.relicTemp.sub1"},"color": "white","bold": false},{"text":" >> ","bold": false},{"score":{"name": "$tsk.newLevel.sub1","objective": "tsk.relicTemp.sub1"},"bold":false}]