tag @s add tsk.relicBuffApplied.necklace
tag @s add tsk.relicBuff.percentage.necklace.def

scoreboard players operation $temp.def tsk.getPercentageOf = @s tsk.def
# Ex: tsk.def = 50; tsk.getPercentageOf.$temp.def = 50
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp
# Ex: tsk.relicTemp = 24; tsk.percentageValue.$tsk.percentageValue = 24


scoreboard players operation $temp.def tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
# [R] = 1200
scoreboard players operation $temp.def tsk.getPercentageOf /= $100 tsk.int
# [R] = 12

scoreboard players operation @s tsk.relicBuff.necklace.def += $temp.def tsk.getPercentageOf
scoreboard players operation @s tsk.def += @s tsk.relicBuff.necklace.def 
 
tellraw @s [{"text":"The necklace glows softly... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.def"},"color": "green"},{"text":" DEF","color": "green"}]

scoreboard players reset $temp.def tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

