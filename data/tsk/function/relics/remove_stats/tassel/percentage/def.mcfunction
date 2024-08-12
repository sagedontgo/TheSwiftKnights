tag @s remove tsk.relicBuffApplied.tassel
tag @s remove tsk.relicBuff.percentage.tassel.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.tassel.def
tellraw @s [{"text":"The tassel stops moving... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.def"},"color": "red"},{"text":" DEF","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.tassel.def


scoreboard players reset @s tsk.relicTemp

