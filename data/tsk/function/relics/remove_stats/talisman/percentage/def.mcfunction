tag @s remove tsk.relicBuffApplied.talisman
tag @s remove tsk.relicBuff.percentage.talisman.def
scoreboard players operation @s tsk.def -= @s tsk.relicBuff.talisman.def
tellraw @s [{"text":"The talisman falls silent... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.talisman.def"},"color": "red"},{"text":" DEF","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.talisman.def


scoreboard players reset @s tsk.relicTemp

