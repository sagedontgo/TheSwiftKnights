tag @s remove tsk.relicBuffApplied.substat4.talisman
tag @s remove tsk.relicBuff.substat4.percentage.talisman.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat4.talisman.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.talisman.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.talisman.str


 scoreboard players reset @s tsk.relicTemp.sub4

