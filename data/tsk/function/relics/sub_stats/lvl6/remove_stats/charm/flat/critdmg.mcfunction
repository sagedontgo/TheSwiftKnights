tag @s remove tsk.relicBuffApplied.substat3.charm
tag @s remove tsk.relicBuff.substat3.flat.charm.critDmg
scoreboard players operation @s tsk.critDamagePercentage -= @s tsk.relicBuff.substat3.charm.critDmg
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.critDmg"},"color": "red"},{"text":" Crit DMG%","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.charm.critDmg

execute as @s run function tsk:crit/damage/calculate_crit_damage

 scoreboard players reset @s tsk.relicTemp.sub3

