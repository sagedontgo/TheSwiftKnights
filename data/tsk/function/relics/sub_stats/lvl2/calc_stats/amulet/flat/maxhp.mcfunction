tag @s add tsk.relicBuffApplied.substat1.amulet
tag @s add tsk.relicBuff.substat1.flat.amulet.maxHp
scoreboard players operation @s tsk.relicBuff.substat1.amulet.maxHp = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.substat1.amulet.maxHp
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.amulet.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub1

