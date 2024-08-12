tag @s add tsk.relicBuffApplied.substat4.charm
tag @s add tsk.relicBuff.substat4.flat.charm.maxMana
scoreboard players operation @s tsk.relicBuff.substat4.charm.maxMana = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat4.charm.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.charm.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub4

