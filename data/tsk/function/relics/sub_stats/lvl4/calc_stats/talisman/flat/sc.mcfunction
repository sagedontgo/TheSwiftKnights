tag @s add tsk.relicBuffApplied.substat2.talisman
tag @s add tsk.relicBuff.substat2.flat.talisman.sc
scoreboard players operation @s tsk.relicBuff.substat2.talisman.sc = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.substat2.talisman.sc
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp.sub2

