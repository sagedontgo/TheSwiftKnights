tag @s add tsk.relicBuffApplied.substat2.charm
tag @s add tsk.relicBuff.substat2.percentage.charm.critRate

scoreboard players operation $temp.critRate tsk.getPercentageOf = @s tsk.critRate
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp.sub2


scoreboard players operation $temp.critRate tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.critRate tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.substat2.charm.critRate += $temp.critRate tsk.getPercentageOf
scoreboard players operation @s tsk.critRate += @s tsk.relicBuff.substat2.charm.critRate
 
tellraw @s [{"text":"","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.charm.critRate"},"color": "green"},{"text":" Crit Rate","color": "green"}]

scoreboard players reset $temp.critRate tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp.sub2

