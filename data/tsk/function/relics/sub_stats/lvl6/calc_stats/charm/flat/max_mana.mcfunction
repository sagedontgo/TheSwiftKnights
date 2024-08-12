tag @s add tsk.relicBuffApplied.substat3.charm
tag @s add tsk.relicBuff.substat3.flat.charm.maxMana
scoreboard players operation @s tsk.relicBuff.substat3.charm.maxMana = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat3.charm.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub3

