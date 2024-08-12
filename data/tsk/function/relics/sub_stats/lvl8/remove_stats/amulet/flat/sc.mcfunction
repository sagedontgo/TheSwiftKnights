tag @s remove tsk.relicBuffApplied.substat4.amulet
tag @s remove tsk.relicBuff.substat4.flat.amulet.sc
scoreboard players operation @s tsk.maxHunger -= @s tsk.relicBuff.substat4.amulet.sc
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.sc"},"color": "red"},{"text":" Maximum Stomach Capacity","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.amulet.sc


 scoreboard players reset @s tsk.relicTemp.sub4

