tag @s remove tsk.relicBuffApplied.charm
tag @s remove tsk.relicBuff.percentage.charm.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.charm.maxHp
tellraw @s [{"text":"The charm dims... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.charm.maxHp


scoreboard players reset @s tsk.relicTemp

