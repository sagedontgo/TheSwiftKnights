tag @s remove tsk.relicBuffApplied.substat2.necklace
tag @s remove tsk.relicBuff.substat2.percentage.necklace.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.substat2.necklace.def
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.necklace.def"},"color": "red"},{"text":" DEF","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.necklace.def


 scoreboard players reset @s tsk.relicTemp.sub2

