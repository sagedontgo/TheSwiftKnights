tag @s remove tsk.relicBuffApplied.substat2.charm
tag @s remove tsk.relicBuff.substat2.flat.charm.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat2.charm.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.charm.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.charm.def


 scoreboard players reset @s tsk.relicTemp.sub2

