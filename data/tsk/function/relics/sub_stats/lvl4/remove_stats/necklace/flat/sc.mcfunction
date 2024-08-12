tag @s remove tsk.relicBuffApplied.substat2.necklace
tag @s remove tsk.relicBuff.substat2.flat.necklace.sc
scoreboard players operation @s tsk.maxHunger -= @s tsk.relicBuff.substat2.necklace.sc
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.necklace.sc"},"color": "red"},{"text":" Maximum Stomach Capacity","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.necklace.sc


 scoreboard players reset @s tsk.relicTemp.sub2

