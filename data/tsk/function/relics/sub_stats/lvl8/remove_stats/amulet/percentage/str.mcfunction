tag @s remove tsk.relicBuffApplied.substat4.amulet
tag @s remove tsk.relicBuff.substat4.percentage.amulet.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat4.amulet.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.str"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.amulet.str


 scoreboard players reset @s tsk.relicTemp.sub4

