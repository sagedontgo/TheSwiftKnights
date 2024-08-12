tag @s remove tsk.relicBuffApplied.substat2.tassel
tag @s remove tsk.relicBuff.substat2.percentage.tassel.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat2.tassel.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.tassel.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.tassel.critRate


 scoreboard players reset @s tsk.relicTemp.sub2

