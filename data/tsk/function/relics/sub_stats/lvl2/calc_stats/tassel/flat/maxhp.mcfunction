tag @s add tsk.relicBuffApplied.substat1.tassel
tag @s add tsk.relicBuff.substat1.flat.tassel.maxHp
scoreboard players operation @s tsk.relicBuff.substat1.tassel.maxHp = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.substat1.tassel.maxHp
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.tassel.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub1

