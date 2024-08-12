tag @s remove tsk.relicBuffApplied.substat2.tassel
tag @s remove tsk.relicBuff.substat2.percentage.tassel.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat2.tassel.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.tassel.str"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.tassel.str


 scoreboard players reset @s tsk.relicTemp.sub2

