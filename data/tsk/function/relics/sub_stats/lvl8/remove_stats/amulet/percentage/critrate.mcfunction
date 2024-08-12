tag @s remove tsk.relicBuffApplied.substat4.amulet
tag @s remove tsk.relicBuff.substat4.percentage.amulet.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat4.amulet.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.amulet.critRate


 scoreboard players reset @s tsk.relicTemp.sub4

