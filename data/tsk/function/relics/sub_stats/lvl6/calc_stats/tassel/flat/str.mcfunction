tag @s add tsk.relicBuffApplied.substat3.tassel
tag @s add tsk.relicBuff.substat3.flat.tassel.str
scoreboard players operation @s tsk.relicBuff.substat3.tassel.str = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat3.tassel.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.tassel.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

