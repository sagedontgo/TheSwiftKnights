tag @s add tsk.relicBuffApplied.substat3.tassel
tag @s add tsk.relicBuff.substat3.flat.tassel.sc
scoreboard players operation @s tsk.relicBuff.substat3.tassel.sc = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.substat3.tassel.sc
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.tassel.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp.sub3

