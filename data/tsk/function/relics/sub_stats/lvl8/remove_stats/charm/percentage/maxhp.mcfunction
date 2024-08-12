tag @s remove tsk.relicBuffApplied.substat4.charm
tag @s remove tsk.relicBuff.substat4.percentage.charm.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat4.charm.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.charm.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.charm.maxHp


 scoreboard players reset @s tsk.relicTemp.sub4

