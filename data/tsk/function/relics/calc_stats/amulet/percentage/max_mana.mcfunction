tag @s add tsk.relicBuffApplied.amulet
tag @s add tsk.relicBuff.percentage.amulet.maxMana

scoreboard players operation $temp.maxMana tsk.getPercentageOf = @s tsk.manaMax
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp


scoreboard players operation $temp.maxMana tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.maxMana tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.amulet.maxMana = $temp.maxMana tsk.getPercentageOf
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.amulet.maxMana
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The amulet feels your presence... it blesses you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.amulet.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]

scoreboard players reset $temp.maxMana tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

