tag @s add tsk.relicBuffApplied.talisman
tag @s add tsk.relicBuff.flat.talisman.str
scoreboard players operation @s tsk.relicBuff.talisman.str = @s tsk.relicTemp
scoreboard players operation @s tsk.str += @s tsk.relicBuff.talisman.str
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The talisman hums with energy... it empowers you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.talisman.str"},"color": "green"},{"text":" Attack Strength","color": "green"}]




scoreboard players reset @s tsk.relicTemp

