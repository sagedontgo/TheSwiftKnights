tag @s add tsk.relicBuffApplied.tassel
tag @s add tsk.relicBuff.percentage.tassel.str

scoreboard players operation $temp.str tsk.getPercentageOf = @s tsk.str
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp


scoreboard players operation $temp.str tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.str tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.tassel.str = $temp.str tsk.getPercentageOf
scoreboard players operation @s tsk.str += @s tsk.relicBuff.tassel.str 
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The tassel blows with the breeze... it enhances you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]

scoreboard players reset $temp.str tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

