tag @s add tsk.relicBuffApplied.substat2.charm
tag @s add tsk.relicBuff.substat2.flat.charm.sc
scoreboard players operation @s tsk.relicBuff.substat2.charm.sc = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.substat2.charm.sc
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.charm.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp.sub2

