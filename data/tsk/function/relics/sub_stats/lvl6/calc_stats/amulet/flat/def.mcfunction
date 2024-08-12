tag @s add tsk.relicBuffApplied.substat3.amulet
tag @s add tsk.relicBuff.substat3.flat.amulet.def
scoreboard players operation @s tsk.relicBuff.substat3.amulet.def = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat3.amulet.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

