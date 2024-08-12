tag @s add tsk.relicBuffApplied.substat4.necklace
tag @s add tsk.relicBuff.substat4.flat.necklace.critDmg
scoreboard players operation @s tsk.relicBuff.substat4.necklace.critDmg = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.critDamagePercentage += @s tsk.relicBuff.substat4.necklace.critDmg
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.necklace.critDmg"},"color": "green"},{"text":" Crit DMG%","color": "green"}]



execute as @s run function tsk:crit/damage/calculate_crit_damage

scoreboard players reset @s tsk.relicTemp.sub4

