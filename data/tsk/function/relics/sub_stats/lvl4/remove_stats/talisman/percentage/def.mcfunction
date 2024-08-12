tag @s remove tsk.relicBuffApplied.substat2.talisman
tag @s remove tsk.relicBuff.substat2.percentage.talisman.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat2.talisman.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.talisman.def


 scoreboard players reset @s tsk.relicTemp.sub2

