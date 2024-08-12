tag @s add tsk.relicBuffApplied.substat1.amulet
tag @s add tsk.relicBuff.substat1.flat.amulet.str
scoreboard players operation @s tsk.relicBuff.substat1.amulet.str = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat1.amulet.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.amulet.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub1

