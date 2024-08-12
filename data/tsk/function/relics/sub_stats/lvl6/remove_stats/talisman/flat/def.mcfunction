tag @s remove tsk.relicBuffApplied.substat3.talisman
tag @s remove tsk.relicBuff.substat3.flat.talisman.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat3.talisman.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.talisman.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.talisman.def


 scoreboard players reset @s tsk.relicTemp.sub3

