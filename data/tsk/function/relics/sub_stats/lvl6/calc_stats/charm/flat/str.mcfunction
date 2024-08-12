tag @s add tsk.relicBuffApplied.substat3.charm
tag @s add tsk.relicBuff.substat3.flat.charm.str
scoreboard players operation @s tsk.relicBuff.substat3.charm.str = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat3.charm.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

