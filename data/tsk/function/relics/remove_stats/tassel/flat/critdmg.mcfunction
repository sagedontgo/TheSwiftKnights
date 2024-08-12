tag @s remove tsk.relicBuffApplied.tassel
tag @s remove tsk.relicBuff.flat.tassel.critDmg
scoreboard players operation @s tsk.critDamagePercentage -= @s tsk.relicBuff.tassel.critDmg
tellraw @s [{"text":"The tassel stops moving... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.critDmg"},"color": "red"},{"text":" Crit DMG%","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.tassel.critDmg
execute as @s run function tsk:crit/damage/calculate_crit_damage


scoreboard players reset @s tsk.relicTemp

