tag @s add tsk.relicBuffApplied.substat2.tassel
tag @s add tsk.relicBuff.substat2.flat.tassel.maxHp
scoreboard players operation @s tsk.relicBuff.substat2.tassel.maxHp = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.substat2.tassel.maxHp
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.tassel.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub2

