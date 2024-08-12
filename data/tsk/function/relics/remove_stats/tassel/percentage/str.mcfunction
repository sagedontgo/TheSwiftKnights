tag @s remove tsk.relicBuffApplied.tassel
tag @s remove tsk.relicBuff.percentage.tassel.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.tassel.str
tellraw @s [{"text":"The tassel stops moving... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.str"},"color": "red"},{"text":" Maximum HP","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.tassel.str


scoreboard players reset @s tsk.relicTemp

