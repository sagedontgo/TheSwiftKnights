tag @s add tsk.relicBuffApplied.substat3.necklace
tag @s add tsk.relicBuff.substat3.flat.necklace.sc
scoreboard players operation @s tsk.relicBuff.substat3.necklace.sc = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.substat3.necklace.sc
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.necklace.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp.sub3

