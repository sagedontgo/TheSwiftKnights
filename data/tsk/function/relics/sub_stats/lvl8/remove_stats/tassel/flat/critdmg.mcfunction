tag @s remove tsk.relicBuffApplied.substat4.tassel
tag @s remove tsk.relicBuff.substat4.flat.tassel.critDmg
scoreboard players operation @s tsk.critDamagePercentage -= @s tsk.relicBuff.substat4.tassel.critDmg
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.tassel.critDmg"},"color": "red"},{"text":" Crit DMG%","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.tassel.critDmg

execute as @s run function tsk:crit/damage/calculate_crit_damage

 scoreboard players reset @s tsk.relicTemp.sub4

