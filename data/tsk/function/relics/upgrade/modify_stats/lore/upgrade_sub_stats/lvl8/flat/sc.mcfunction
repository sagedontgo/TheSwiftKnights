$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[7] set value '{"color":"white","extra":[{"color":"gold","text":" Stomach Capacity"}],"italic":false,"text":"+$(value)"}'


tellraw @s [{"text":"Stomach Capacity ","color":"gold","bold": false},{"score":{"name": "$tsk.oldLevel.sub4","objective": "tsk.relicTemp.sub4"},"color": "white","bold": false},{"text":" >> ","bold": false},{"score":{"name": "$tsk.newLevel.sub4","objective": "tsk.relicTemp.sub4"},"bold":false}]