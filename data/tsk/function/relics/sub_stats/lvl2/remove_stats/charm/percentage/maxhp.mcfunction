tag @s remove tsk.relicBuffApplied.substat1.charm
tag @s remove tsk.relicBuff.substat1.percentage.charm.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat1.charm.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.charm.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.charm.maxHp


 scoreboard players reset @s tsk.relicTemp.sub1

