tag @s remove tsk.relicBuffApplied.substat3.necklace
tag @s remove tsk.relicBuff.substat3.percentage.necklace.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat3.necklace.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.necklace.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.necklace.def


 scoreboard players reset @s tsk.relicTemp.sub3

