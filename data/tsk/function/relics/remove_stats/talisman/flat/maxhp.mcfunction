tag @s remove tsk.relicBuffApplied.talisman
tag @s remove tsk.relicBuff.flat.talisman.maxHp
scoreboard players operation @s tsk.maxHp -= @s tsk.relicBuff.talisman.maxHp
tellraw @s [{"text":"The talisman falls silent... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.talisman.maxHp"},"color": "red"},{"text":" Maximum HP","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.talisman.maxHp


scoreboard players reset @s tsk.relicTemp

