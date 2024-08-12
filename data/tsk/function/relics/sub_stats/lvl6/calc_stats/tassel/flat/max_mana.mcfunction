tag @s add tsk.relicBuffApplied.substat3.tassel
tag @s add tsk.relicBuff.substat3.flat.tassel.maxMana
scoreboard players operation @s tsk.relicBuff.substat3.tassel.maxMana = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat3.tassel.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.tassel.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub3

