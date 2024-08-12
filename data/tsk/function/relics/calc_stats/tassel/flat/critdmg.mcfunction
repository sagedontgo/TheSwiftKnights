tag @s add tsk.relicBuffApplied.tassel
tag @s add tsk.relicBuff.flat.tassel.critDmg
scoreboard players operation @s tsk.relicBuff.tassel.critDmg = @s tsk.relicTemp
scoreboard players operation @s tsk.critDamagePercentage += @s tsk.relicBuff.tassel.critDmg
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The tassel blows with the breeze... it enhances you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.critDmg"},"color": "green"},{"text":" Crit DMG%","color": "green"}]

execute as @s run function tsk:crit/damage/calculate_crit_damage

scoreboard players reset @s tsk.relicTemp

