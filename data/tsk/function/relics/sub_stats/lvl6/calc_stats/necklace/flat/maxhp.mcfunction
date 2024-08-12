tag @s add tsk.relicBuffApplied.substat3.necklace
tag @s add tsk.relicBuff.substat3.flat.necklace.maxHp
scoreboard players operation @s tsk.relicBuff.substat3.necklace.maxHp = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.substat3.necklace.maxHp
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.necklace.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

