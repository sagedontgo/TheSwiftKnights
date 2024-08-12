tag @s remove tsk.relicBuffApplied.substat3.charm
tag @s remove tsk.relicBuff.substat3.flat.charm.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat3.charm.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.charm.maxHp


 scoreboard players reset @s tsk.relicTemp.sub3

