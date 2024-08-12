tag @s add tsk.relicBuffApplied.substat4.amulet
tag @s add tsk.relicBuff.substat4.flat.amulet.str
scoreboard players operation @s tsk.relicBuff.substat4.amulet.str = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat4.amulet.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub4

