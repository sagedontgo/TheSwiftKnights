tag @s remove tsk.relicBuffApplied.necklace
tag @s remove tsk.relicBuff.flat.necklace.sc
scoreboard players operation @s tsk.maxHunger -= @s tsk.relicBuff.necklace.sc
tellraw @s [{"text":"The necklace turns cold... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.sc"},"color": "red"},{"text":" Maximum Stomach Capacity","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.necklace.sc


scoreboard players reset @s tsk.relicTemp

