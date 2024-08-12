tag @s remove tsk.relicBuffApplied.substat2.talisman
tag @s remove tsk.relicBuff.substat2.percentage.talisman.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat2.talisman.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.talisman.maxHp


 scoreboard players reset @s tsk.relicTemp.sub2

