tag @s add tsk.relicBuffApplied.necklace
tag @s add tsk.relicBuff.flat.necklace.sc
scoreboard players operation @s tsk.relicBuff.necklace.sc = @s tsk.relicTemp
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.necklace.sc
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The necklace feels warm around your neck... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.necklace.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp

