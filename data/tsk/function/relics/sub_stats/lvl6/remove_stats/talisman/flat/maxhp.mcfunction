tag @s remove tsk.relicBuffApplied.substat3.talisman
tag @s remove tsk.relicBuff.substat3.flat.talisman.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.substat3.talisman.maxHp
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.talisman.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.talisman.maxHp


 scoreboard players reset @s tsk.relicTemp.sub3

