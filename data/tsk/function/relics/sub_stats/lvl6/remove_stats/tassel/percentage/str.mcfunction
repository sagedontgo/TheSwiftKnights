tag @s remove tsk.relicBuffApplied.substat3.tassel
tag @s remove tsk.relicBuff.substat3.percentage.tassel.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat3.tassel.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.tassel.str"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.tassel.str


 scoreboard players reset @s tsk.relicTemp.sub3

