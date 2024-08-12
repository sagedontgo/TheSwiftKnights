tag @s remove tsk.relicBuffApplied.charm
tag @s remove tsk.relicBuff.percentage.charm.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.charm.critRate
tellraw @s [{"text":"The charm dims... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.charm.critRate


scoreboard players reset @s tsk.relicTemp

