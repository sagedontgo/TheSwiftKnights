tag @s remove tsk.relicBuffApplied.necklace
tag @s remove tsk.relicBuff.flat.necklace.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.necklace.manaRegen
tellraw @s [{"text":"The necklace turns cold... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.necklace.manaRegen


scoreboard players reset @s tsk.relicTemp

