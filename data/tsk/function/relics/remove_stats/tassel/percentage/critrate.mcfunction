tag @s remove tsk.relicBuffApplied.tassel
tag @s remove tsk.relicBuff.percentage.tassel.critRate
scoreboard players operation @s tsk.critRate -= @s tsk.relicBuff.tassel.critRate
tellraw @s [{"text":"The tassel stops moving... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.critRate"},"color": "red"},{"text":" Crit Rate","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.tassel.critRate


scoreboard players reset @s tsk.relicTemp

