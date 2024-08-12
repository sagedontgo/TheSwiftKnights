tag @s add tsk.relicBuffApplied.substat2.necklace
tag @s add tsk.relicBuff.substat2.flat.necklace.critDmg
scoreboard players operation @s tsk.relicBuff.substat2.necklace.critDmg = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.critDamagePercentage += @s tsk.relicBuff.substat2.necklace.critDmg
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.necklace.critDmg"},"color": "green"},{"text":" Crit DMG%","color": "green"}]


execute as @s run function tsk:crit/damage/calculate_crit_damage


scoreboard players reset @s tsk.relicTemp.sub2

