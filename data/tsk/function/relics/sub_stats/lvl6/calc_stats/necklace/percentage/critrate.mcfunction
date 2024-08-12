tag @s add tsk.relicBuffApplied.necklace
tag @s add tsk.relicBuff.percentage.necklace.critRate

scoreboard players operation $temp.critRate tsk.getPercentageOf = @s tsk.critRate
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp


scoreboard players operation $temp.critRate tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.critRate tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.necklace.critRate += $temp.critRate tsk.getPercentageOf
scoreboard players operation @s tsk.critRate += @s tsk.relicBuff.necklace.critRate
 
tellraw @s [{"text":"The necklace glows softly... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.critRate"},"color": "green"},{"text":" Crit Rate","color": "green"}]

scoreboard players reset $temp.critRate tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

