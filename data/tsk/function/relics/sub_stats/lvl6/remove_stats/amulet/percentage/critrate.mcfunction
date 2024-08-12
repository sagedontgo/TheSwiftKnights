tag @s remove tsk.relicBuffApplied.substat3.amulet
tag @s remove tsk.relicBuff.substat3.percentage.amulet.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat3.amulet.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.amulet.critRate


 scoreboard players reset @s tsk.relicTemp.sub3

