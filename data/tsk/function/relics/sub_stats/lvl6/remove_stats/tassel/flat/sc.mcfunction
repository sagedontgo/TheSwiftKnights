tag @s remove tsk.relicBuffApplied.substat3.tassel
tag @s remove tsk.relicBuff.substat3.flat.tassel.sc
scoreboard players operation @s tsk.maxHunger -= @s tsk.relicBuff.substat3.tassel.sc
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.tassel.sc"},"color": "red"},{"text":" Maximum Stomach Capacity","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.tassel.sc


 scoreboard players reset @s tsk.relicTemp.sub3

