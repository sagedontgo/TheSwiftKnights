tag @s remove tsk.relicBuffApplied.talisman
tag @s remove tsk.relicBuff.flat.talisman.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.talisman.str
tellraw @s [{"text":"The talisman falls silent... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.talisman.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.talisman.str


scoreboard players reset @s tsk.relicTemp

