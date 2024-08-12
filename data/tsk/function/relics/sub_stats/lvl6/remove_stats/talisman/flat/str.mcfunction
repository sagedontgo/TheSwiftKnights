tag @s remove tsk.relicBuffApplied.substat3.talisman
tag @s remove tsk.relicBuff.substat3.flat.talisman.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat3.talisman.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.talisman.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.talisman.str


 scoreboard players reset @s tsk.relicTemp.sub3

