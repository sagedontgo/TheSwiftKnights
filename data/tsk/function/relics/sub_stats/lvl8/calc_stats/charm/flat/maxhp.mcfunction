tag @s add tsk.relicBuffApplied.substat4.charm
tag @s add tsk.relicBuff.substat4.flat.charm.maxHp
scoreboard players operation @s tsk.relicBuff.substat4.charm.maxHp = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.substat4.charm.maxHp
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.charm.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub4

