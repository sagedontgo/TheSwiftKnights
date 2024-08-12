tag @s remove tsk.relicBuffApplied.substat4.talisman
tag @s remove tsk.relicBuff.substat4.flat.talisman.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat4.talisman.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.talisman.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.talisman.def


 scoreboard players reset @s tsk.relicTemp.sub4

