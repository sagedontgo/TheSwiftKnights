$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[6] set value '{"color":"white","extra":[{"color":"green","text":" DEF"}],"italic":false,"text":"+$(value)%"}'


tellraw @s [{"text":"DEF% ","color":"green","bold": false},{"score":{"name": "$tsk.oldLevel.sub3","objective": "tsk.relicTemp.sub3"},"color": "white","bold": false},{"text":" >> ","bold": false},{"score":{"name": "$tsk.newLevel.sub3","objective": "tsk.relicTemp.sub3"},"bold":false}]