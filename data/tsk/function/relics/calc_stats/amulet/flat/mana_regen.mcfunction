tag @s add tsk.relicBuffApplied.amulet
tag @s add tsk.relicBuff.flat.amulet.manaRegen
scoreboard players operation @s tsk.relicBuff.amulet.manaRegen = @s tsk.relicTemp
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.amulet.manaRegen
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The amulet feels your presence... it blesses you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.amulet.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]




scoreboard players reset @s tsk.relicTemp

