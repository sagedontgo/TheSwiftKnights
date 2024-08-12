tag @s add tsk.relicBuffApplied.substat3.tassel
tag @s add tsk.relicBuff.substat3.flat.tassel.critDmg
scoreboard players operation @s tsk.relicBuff.substat3.tassel.critDmg = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.critDamagePercentage += @s tsk.relicBuff.substat3.tassel.critDmg
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.tassel.critDmg"},"color": "green"},{"text":" Crit DMG%","color": "green"}]



execute as @s run function tsk:crit/damage/calculate_crit_damage

scoreboard players reset @s tsk.relicTemp.sub3

