tag @s add tsk.relicBuffApplied.substat1.charm
tag @s add tsk.relicBuff.substat1.flat.charm.str
scoreboard players operation @s tsk.relicBuff.substat1.charm.str = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat1.charm.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.charm.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub1

