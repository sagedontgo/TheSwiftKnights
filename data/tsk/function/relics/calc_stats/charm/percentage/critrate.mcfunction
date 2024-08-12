tag @s add tsk.relicBuffApplied.charm
tag @s add tsk.relicBuff.percentage.charm.critRate

scoreboard players operation $temp.critRate tsk.getPercentageOf = @s tsk.critRate
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp


scoreboard players operation $temp.critRate tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.critRate tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.charm.critRate = $temp.critRate tsk.getPercentageOf
scoreboard players operation @s tsk.critRate += @s tsk.relicBuff.charm.critRate
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The charm glows softly... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.critRate"},"color": "green"},{"text":" Crit Rate","color": "green"}]

scoreboard players reset $temp.critRate tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

