$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:lore".[4] set value '{"color":"white","extra":[{"color":"aqua","text":" Maximum Mana"}],"italic":false,"text":"+$(value)%"}'
data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat1 set value "maxManaPercentage"


tellraw @s [{"text":"SUB-STAT UNLOCKED\n","bold": true},{"text":"Maximum Mana% ","color":"aqua","bold": false},{"score":{"name": "$tsk.subStatBuffValue","objective": "tsk.randomVal"},"bold":false}]