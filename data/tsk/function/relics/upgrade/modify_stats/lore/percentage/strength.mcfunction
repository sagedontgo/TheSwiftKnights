$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[2] set value '{"color":"white","extra":[{"color":"dark_red","text":" Attack Strength"}],"italic":false,"text":"+$(value)"}'


tellraw @s [{"text":"LEVEL UP!\n","bold": true},{"text":"Attack Strength% ","color":"dark_red","bold": false},{"score":{"name": "$tsk.oldLevel","objective": "tsk.relicTemp"},"color": "white","bold": false},{"text":" >> ","bold": false},{"score":{"name": "$tsk.newLevel","objective": "tsk.relicTemp"},"bold":false}]