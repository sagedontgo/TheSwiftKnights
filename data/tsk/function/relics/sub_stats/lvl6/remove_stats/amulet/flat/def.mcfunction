tag @s remove tsk.relicBuffApplied.substat3.amulet
tag @s remove tsk.relicBuff.substat3.flat.amulet.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat3.amulet.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.amulet.def


 scoreboard players reset @s tsk.relicTemp.sub3

