tag @s remove tsk.relicBuffApplied.substat1.amulet
tag @s remove tsk.relicBuff.substat1.flat.amulet.critDmg
scoreboard players operation @s tsk.critDamagePercentage -= @s tsk.relicBuff.substat1.amulet.critDmg
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.amulet.critDmg"},"color": "red"},{"text":" Crit DMG%","color": "red"}]
scoreboard players reset @s tsk.relicBuff.substat1.amulet.critDmg
execute as @s run function tsk:crit/damage/calculate_crit_damage

execute as @s run function tsk:crit/damage/calculate_crit_damage

 scoreboard players reset @s tsk.relicTemp.sub1

