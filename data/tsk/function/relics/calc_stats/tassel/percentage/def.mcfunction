tag @s add tsk.relicBuffApplied.tassel
tag @s add tsk.relicBuff.percentage.tassel.def

scoreboard players operation $temp.def tsk.getPercentageOf = @s tsk.def
# Ex: tsk.def = 50; tsk.getPercentageOf.$temp.def = 50
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp
# Ex: tsk.relicTemp = 24; tsk.percentageValue.$tsk.percentageValue = 24


scoreboard players operation $temp.def tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
# [R] = 1200
scoreboard players operation $temp.def tsk.getPercentageOf /= $100 tsk.int
# [R] = 12

scoreboard players operation @s tsk.relicBuff.tassel.def = $temp.def tsk.getPercentageOf
scoreboard players operation @s tsk.def += @s tsk.relicBuff.tassel.def 
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The tassel blows with the breeze... it enhances you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.def"},"color": "green"},{"text":" DEF","color": "green"}]

scoreboard players reset $temp.def tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

