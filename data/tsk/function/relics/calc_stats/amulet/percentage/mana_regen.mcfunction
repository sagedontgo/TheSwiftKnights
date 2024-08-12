tag @s add tsk.relicBuffApplied.amulet
tag @s add tsk.relicBuff.percentage.amulet.manaRegen

scoreboard players operation $temp.manaRegen tsk.getPercentageOf = @s tsk.manaRegenRate
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp


scoreboard players operation $temp.manaRegen tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.manaRegen tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.amulet.manaRegen = $temp.manaRegen tsk.getPercentageOf
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.amulet.manaRegen
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The amulet feels your presence... it blesses you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.amulet.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]

scoreboard players reset $temp.manaRegen tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp

