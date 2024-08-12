tag @s add tsk.relicBuffApplied.talisman
tag @s add tsk.relicBuff.flat.talisman.maxHp
scoreboard players operation @s tsk.relicBuff.talisman.maxHp = @s tsk.relicTemp
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.talisman.maxHp
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The talisman hums with energy... it empowers you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.talisman.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp

