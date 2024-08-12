tag @s add tsk.relicBuffApplied.necklace
tag @s add tsk.relicBuff.percentage.necklace.maxMana

scoreboard players operation $temp.maxMana tsk.getPercentageOf = @s tsk.manaMax
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp


scoreboard players operation $temp.maxMana tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.maxMana tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.necklace.maxMana = $temp.maxMana tsk.getPercentageOf
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.necklace.maxMana
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The necklace feels warm around your neck... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]

scoreboard players reset $temp.maxMana tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

