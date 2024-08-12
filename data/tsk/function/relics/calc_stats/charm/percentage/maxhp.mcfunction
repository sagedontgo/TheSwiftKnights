tag @s add tsk.relicBuffApplied.charm
tag @s add tsk.relicBuff.percentage.charm.maxHp

scoreboard players operation $temp.maxHp tsk.getPercentageOf = @s tsk.maxHp
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp


scoreboard players operation $temp.maxHp tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.maxHp tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.charm.maxHp = $temp.maxHp tsk.getPercentageOf
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.charm.maxHp 
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The charm glows softly... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.maxHp"},"color": "green"},{"text":" MAX HP","color": "green"}]

scoreboard players reset $temp.maxHp tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

