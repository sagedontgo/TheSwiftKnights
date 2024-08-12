tag @s add tsk.relicBuffApplied.substat2.charm
tag @s add tsk.relicBuff.substat2.percentage.charm.maxMana

scoreboard players operation $temp.maxMana tsk.getPercentageOf = @s tsk.manaMax
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp.sub2


scoreboard players operation $temp.maxMana tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.maxMana tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.substat2.charm.maxMana += $temp.maxMana tsk.getPercentageOf
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat2.charm.maxMana
 
tellraw @s [{"text":"T ","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.charm.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]

scoreboard players reset $temp.maxMana tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp.sub2

