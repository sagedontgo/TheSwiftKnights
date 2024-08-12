tag @s add tsk.relicBuffApplied.substat3.talisman
tag @s add tsk.relicBuff.substat3.flat.talisman.str
scoreboard players operation @s tsk.relicBuff.substat3.talisman.str = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat3.talisman.str
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.talisman.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

