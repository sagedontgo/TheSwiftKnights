tag @s add tsk.relicBuffApplied.amulet
tag @s add tsk.relicBuff.flat.amulet.maxMana
scoreboard players operation @s tsk.relicBuff.amulet.maxMana = @s tsk.relicTemp
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.amulet.maxMana
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The amulet feels your presence... it blesses you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.amulet.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp

