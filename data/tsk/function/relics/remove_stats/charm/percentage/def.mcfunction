tag @s remove tsk.relicBuffApplied.charm
tag @s remove tsk.relicBuff.percentage.charm.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.charm.def
tellraw @s [{"text":"The charm dims... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.def"},"color": "red"},{"text":" DEF","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.charm.def


scoreboard players reset @s tsk.relicTemp

