tag @s remove tsk.relicBuffApplied.substat4.necklace
tag @s remove tsk.relicBuff.substat4.percentage.necklace.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat4.necklace.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.necklace.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.necklace.maxHp


 scoreboard players reset @s tsk.relicTemp.sub4

