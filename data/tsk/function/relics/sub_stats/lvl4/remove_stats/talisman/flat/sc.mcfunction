tag @s remove tsk.relicBuffApplied.substat2.talisman
tag @s remove tsk.relicBuff.substat2.flat.talisman.sc
scoreboard players operation @s tsk.maxHunger -= @s tsk.relicBuff.substat2.talisman.sc
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.sc"},"color": "red"},{"text":" Maximum Stomach Capacity","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.talisman.sc


 scoreboard players reset @s tsk.relicTemp.sub2

