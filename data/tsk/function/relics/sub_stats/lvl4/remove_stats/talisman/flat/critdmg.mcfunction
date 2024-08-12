tag @s remove tsk.relicBuffApplied.substat2.talisman
tag @s remove tsk.relicBuff.substat2.flat.talisman.critDmg
scoreboard players operation @s tsk.critDamagePercentage -= @s tsk.relicBuff.substat2.talisman.critDmg
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.critDmg"},"color": "red"},{"text":" Crit DMG%","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.talisman.critDmg

execute as @s run function tsk:crit/damage/calculate_crit_damage

 scoreboard players reset @s tsk.relicTemp.sub2

