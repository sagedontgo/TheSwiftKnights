tag @s add tsk.relicBuffApplied.substat3.amulet
tag @s add tsk.relicBuff.substat3.flat.amulet.maxHp
scoreboard players operation @s tsk.relicBuff.substat3.amulet.maxHp = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.substat3.amulet.maxHp
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

