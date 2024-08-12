tag @s add tsk.relicBuffApplied.substat1.tassel
tag @s add tsk.relicBuff.substat1.flat.tassel.maxMana
scoreboard players operation @s tsk.relicBuff.substat1.tassel.maxMana = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat1.tassel.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.tassel.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub1

