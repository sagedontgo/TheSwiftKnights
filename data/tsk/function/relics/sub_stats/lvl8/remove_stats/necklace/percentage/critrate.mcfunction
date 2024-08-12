tag @s remove tsk.relicBuffApplied.substat4.necklace
tag @s remove tsk.relicBuff.substat4.percentage.necklace.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.substat4.necklace.critRate
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.necklace.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.necklace.critRate


 scoreboard players reset @s tsk.relicTemp.sub4

