tag @s remove tsk.relicBuffApplied.substat4.necklace
tag @s remove tsk.relicBuff.substat4.percentage.necklace.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat4.necklace.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.necklace.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.necklace.def


 scoreboard players reset @s tsk.relicTemp.sub4

