tag @s remove tsk.relicBuffApplied.substat2.talisman
tag @s remove tsk.relicBuff.substat2.percentage.talisman.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat2.talisman.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.talisman.str


 scoreboard players reset @s tsk.relicTemp.sub2

