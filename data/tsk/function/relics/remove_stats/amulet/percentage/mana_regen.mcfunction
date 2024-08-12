tag @s remove tsk.relicBuffApplied.amulet
tag @s remove tsk.relicBuff.percentage.amulet.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.amulet.manaRegen
tellraw @s [{"text":"The amulet no longer feels your presence... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.amulet.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.amulet.manaRegen


scoreboard players reset @s tsk.relicTemp

