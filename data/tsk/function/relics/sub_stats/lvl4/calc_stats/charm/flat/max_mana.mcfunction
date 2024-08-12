tag @s add tsk.relicBuffApplied.substat2.charm
tag @s add tsk.relicBuff.substat2.flat.charm.maxMana
scoreboard players operation @s tsk.relicBuff.substat2.charm.maxMana = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat2.charm.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.charm.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub2

