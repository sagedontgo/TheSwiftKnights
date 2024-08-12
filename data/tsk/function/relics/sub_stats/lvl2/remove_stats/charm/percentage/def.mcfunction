tag @s remove tsk.relicBuffApplied.substat1.charm
tag @s remove tsk.relicBuff.substat1.percentage.charm.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat1.charm.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.charm.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.charm.def


 scoreboard players reset @s tsk.relicTemp.sub1

