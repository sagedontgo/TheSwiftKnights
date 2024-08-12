tag @s remove tsk.relicBuffApplied.substat2.amulet
tag @s remove tsk.relicBuff.substat2.percentage.amulet.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat2.amulet.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.amulet.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.amulet.maxHp


 scoreboard players reset @s tsk.relicTemp.sub2

