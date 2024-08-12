tag @s remove tsk.relicBuffApplied.substat2.amulet
tag @s remove tsk.relicBuff.substat2.flat.amulet.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat2.amulet.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.amulet.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.amulet.str


 scoreboard players reset @s tsk.relicTemp.sub2

