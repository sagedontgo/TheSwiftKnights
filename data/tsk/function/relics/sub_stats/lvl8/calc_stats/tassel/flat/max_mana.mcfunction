tag @s add tsk.relicBuffApplied.substat4.tassel
tag @s add tsk.relicBuff.substat4.flat.tassel.maxMana
scoreboard players operation @s tsk.relicBuff.substat4.tassel.maxMana = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat4.tassel.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.tassel.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub4

