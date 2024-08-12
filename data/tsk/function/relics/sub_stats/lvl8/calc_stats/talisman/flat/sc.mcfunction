tag @s add tsk.relicBuffApplied.substat4.talisman
tag @s add tsk.relicBuff.substat4.flat.talisman.sc
scoreboard players operation @s tsk.relicBuff.substat4.talisman.sc = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.substat4.talisman.sc
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.talisman.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp.sub4

