tag @s remove tsk.relicBuffApplied.substat2.necklace
tag @s remove tsk.relicBuff.substat2.flat.necklace.critDmg
scoreboard players operation @s tsk.critDamagePercentage -= @s tsk.relicBuff.substat2.necklace.critDmg
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.necklace.critDmg"},"color": "red"},{"text":" Crit DMG%","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.necklace.critDmg

execute as @s run function tsk:crit/damage/calculate_crit_damage

 scoreboard players reset @s tsk.relicTemp.sub2

