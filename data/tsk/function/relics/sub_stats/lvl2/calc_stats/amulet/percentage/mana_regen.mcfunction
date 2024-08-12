tag @s add tsk.relicBuffApplied.substat1.amulet
tag @s add tsk.relicBuff.substat1.percentage.amulet.manaRegen

scoreboard players operation $temp.manaRegen tsk.getPercentageOf = @s tsk.manaRegenRate
scoreboard players operation $temp.percentage tsk.percentageValue = @s tsk.relicTemp.sub1


scoreboard players operation $temp.manaRegen tsk.getPercentageOf *= $temp.percentage tsk.percentageValue
scoreboard players operation $temp.manaRegen tsk.getPercentageOf /= $100 tsk.int

scoreboard players operation @s tsk.relicBuff.substat1.amulet.manaRegen += $temp.manaRegen tsk.getPercentageOf
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.substat1.amulet.manaRegen
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.amulet.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]

scoreboard players reset $temp.manaRegen tsk.getPercentageOf
scoreboard players reset $temp.percentage tsk.percentageValue
scoreboard players reset @s tsk.relicTemp.sub1

