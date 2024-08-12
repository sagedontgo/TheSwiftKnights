tag @s add tsk.relicBuffApplied.substat4.amulet
tag @s add tsk.relicBuff.substat4.percentage.amulet.str

scoreboard players operation $temp.str tsk.getPercentageOf = @s tsk.str
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp.sub4


scoreboard players operation $temp.str tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.str tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.substat4.amulet.str += $temp.str tsk.getPercentageOf
scoreboard players operation @s tsk.str += @s tsk.relicBuff.substat4.amulet.str 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]

scoreboard players reset $temp.str tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp.sub4

