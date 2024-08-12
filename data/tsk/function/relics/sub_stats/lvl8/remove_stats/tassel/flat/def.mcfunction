tag @s remove tsk.relicBuffApplied.substat4.tassel
tag @s remove tsk.relicBuff.substat4.flat.tassel.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat4.tassel.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.tassel.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.tassel.def


 scoreboard players reset @s tsk.relicTemp.sub4

