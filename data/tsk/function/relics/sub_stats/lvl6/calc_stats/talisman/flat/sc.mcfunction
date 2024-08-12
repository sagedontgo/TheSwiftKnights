tag @s add tsk.relicBuffApplied.substat3.talisman
tag @s add tsk.relicBuff.substat3.flat.talisman.sc
scoreboard players operation @s tsk.relicBuff.substat3.talisman.sc = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.substat3.talisman.sc
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.talisman.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp.sub3

