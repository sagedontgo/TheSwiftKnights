tag @s remove tsk.relicBuffApplied.substat1.tassel
tag @s remove tsk.relicBuff.substat1.percentage.tassel.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat1.tassel.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.tassel.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.tassel.def


 scoreboard players reset @s tsk.relicTemp.sub1

