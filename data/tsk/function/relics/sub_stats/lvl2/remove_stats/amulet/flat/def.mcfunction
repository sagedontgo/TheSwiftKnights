tag @s remove tsk.relicBuffApplied.substat1.amulet
tag @s remove tsk.relicBuff.substat1.flat.amulet.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat1.amulet.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.amulet.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.amulet.def


 scoreboard players reset @s tsk.relicTemp.sub1

