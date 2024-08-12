tag @s remove tsk.relicBuffApplied.necklace
tag @s remove tsk.relicBuff.flat.necklace.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.necklace.maxMana
tellraw @s [{"text":"The necklace turns cold... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.necklace.maxMana


scoreboard players reset @s tsk.relicTemp

