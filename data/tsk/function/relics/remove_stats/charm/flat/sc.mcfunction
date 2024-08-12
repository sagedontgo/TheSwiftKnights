tag @s remove tsk.relicBuffApplied.charm
tag @s remove tsk.relicBuff.flat.charm.sc
scoreboard players operation @s tsk.maxHunger -= @s tsk.relicBuff.charm.sc
tellraw @s [{"text":"The charm dims... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.sc"},"color": "red"},{"text":" Maximum Stomach Capacity","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.charm.sc


scoreboard players reset @s tsk.relicTemp

