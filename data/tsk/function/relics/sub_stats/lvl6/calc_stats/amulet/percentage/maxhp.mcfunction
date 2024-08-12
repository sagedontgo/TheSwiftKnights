tag @s add tsk.relicBuffApplied.substat3.amulet
tag @s add tsk.relicBuff.substat3.percentage.amulet.maxHp

scoreboard players operation $temp.maxHp tsk.getPercentageOf = @s tsk.maxHp
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp.sub3


scoreboard players operation $temp.maxHp tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.maxHp tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.substat3.amulet.maxHp += $temp.maxHp tsk.getPercentageOf
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.substat3.amulet.maxHp 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.maxHp"},"color": "green"},{"text":" MAX HP","color": "green"}]

scoreboard players reset $temp.maxHp tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp.sub3

