tag @s remove tsk.relicBuffApplied.substat1.necklace
tag @s remove tsk.relicBuff.substat1.percentage.necklace.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat1.necklace.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.necklace.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.necklace.critRate


 scoreboard players reset @s tsk.relicTemp.sub1

