tag @s add tsk.relicBuffApplied.substat2.tassel
tag @s add tsk.relicBuff.substat2.flat.tassel.str
scoreboard players operation @s tsk.relicBuff.substat2.tassel.str = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat2.tassel.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.tassel.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub2

