tag @s add tsk.relicBuffApplied.substat4.necklace
tag @s add tsk.relicBuff.substat4.flat.necklace.maxMana
scoreboard players operation @s tsk.relicBuff.substat4.necklace.maxMana = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat4.necklace.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.necklace.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub4

