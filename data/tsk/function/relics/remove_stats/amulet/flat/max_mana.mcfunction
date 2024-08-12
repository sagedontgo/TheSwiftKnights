tag @s remove tsk.relicBuffApplied.amulet
tag @s remove tsk.relicBuff.flat.amulet.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.amulet.maxMana
tellraw @s [{"text":"The amulet no longer feels your presence... you lose","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.amulet.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
playsound entity.ender_eye.death neutral @s ~ ~ ~ 1.0 1.0
scoreboard players reset @s tsk.relicBuff.amulet.maxMana


scoreboard players reset @s tsk.relicTemp

