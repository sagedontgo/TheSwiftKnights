tag @s remove tsk.relicBuffApplied.substat1.tassel
tag @s remove tsk.relicBuff.substat1.flat.tassel.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat1.tassel.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.tassel.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.tassel.maxHp


 scoreboard players reset @s tsk.relicTemp.sub1

