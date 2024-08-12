tag @s add tsk.relicBuffApplied.substat4.amulet
tag @s add tsk.relicBuff.substat4.flat.amulet.maxMana
scoreboard players operation @s tsk.relicBuff.substat4.amulet.maxMana = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat4.amulet.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub4

