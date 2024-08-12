tag @s add tsk.relicBuffApplied.necklace
tag @s add tsk.relicBuff.flat.necklace.manaRegen
scoreboard players operation @s tsk.relicBuff.necklace.manaRegen = @s tsk.relicTemp
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.necklace.manaRegen
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The necklace feels warm around your neck... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]




scoreboard players reset @s tsk.relicTemp

