tag @s remove tsk.relicBuffApplied.substat4.amulet
tag @s remove tsk.relicBuff.substat4.flat.amulet.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat4.amulet.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.amulet.def


 scoreboard players reset @s tsk.relicTemp.sub4

