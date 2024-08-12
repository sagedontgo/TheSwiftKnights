tag @s remove tsk.relicBuffApplied.substat3.necklace
tag @s remove tsk.relicBuff.substat3.percentage.necklace.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat3.necklace.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.necklace.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.necklace.maxHp


 scoreboard players reset @s tsk.relicTemp.sub3

