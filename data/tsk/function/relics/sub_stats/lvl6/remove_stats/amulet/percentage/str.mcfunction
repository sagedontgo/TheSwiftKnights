tag @s remove tsk.relicBuffApplied.substat3.amulet
tag @s remove tsk.relicBuff.substat3.percentage.amulet.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat3.amulet.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.str"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.amulet.str


 scoreboard players reset @s tsk.relicTemp.sub3

