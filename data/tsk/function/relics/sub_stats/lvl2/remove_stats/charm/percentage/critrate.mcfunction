tag @s remove tsk.relicBuffApplied.substat1.charm
tag @s remove tsk.relicBuff.substat1.percentage.charm.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat1.charm.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.charm.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.charm.critRate


 scoreboard players reset @s tsk.relicTemp.sub1

