tag @s remove tsk.relicBuffApplied.necklace
tag @s remove tsk.relicBuff.percentage.necklace.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.necklace.maxHp
tellraw @s [{"text":"The necklace turns cold... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.necklace.maxHp


scoreboard players reset @s tsk.relicTemp

