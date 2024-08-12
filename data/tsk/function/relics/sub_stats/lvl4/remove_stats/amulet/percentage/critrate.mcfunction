tag @s remove tsk.relicBuffApplied.substat2.amulet
tag @s remove tsk.relicBuff.substat2.percentage.amulet.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat2.amulet.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.amulet.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.amulet.critRate


 scoreboard players reset @s tsk.relicTemp.sub2

