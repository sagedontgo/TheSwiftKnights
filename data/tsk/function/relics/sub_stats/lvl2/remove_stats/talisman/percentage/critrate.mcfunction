tag @s remove tsk.relicBuffApplied.substat1.talisman
tag @s remove tsk.relicBuff.substat1.percentage.talisman.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat1.talisman.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.talisman.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.talisman.critRate


 scoreboard players reset @s tsk.relicTemp.sub1

