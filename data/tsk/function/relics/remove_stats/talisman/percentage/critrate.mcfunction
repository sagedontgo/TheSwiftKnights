tag @s remove tsk.relicBuffApplied.talisman
tag @s remove tsk.relicBuff.percentage.talisman.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.talisman.critRate
tellraw @s [{"text":"The talisman falls silent... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.talisman.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.talisman.critRate


scoreboard players reset @s tsk.relicTemp

