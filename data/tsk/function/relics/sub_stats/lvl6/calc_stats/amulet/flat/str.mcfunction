tag @s add tsk.relicBuffApplied.substat3.amulet
tag @s add tsk.relicBuff.substat3.flat.amulet.str
scoreboard players operation @s tsk.relicBuff.substat3.amulet.str = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat3.amulet.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

