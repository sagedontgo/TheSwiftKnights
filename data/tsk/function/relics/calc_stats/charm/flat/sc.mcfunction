tag @s add tsk.relicBuffApplied.charm
tag @s add tsk.relicBuff.flat.charm.sc
scoreboard players operation @s tsk.relicBuff.charm.sc = @s tsk.relicTemp
scoreboard players operation @s tsk.maxHunger += @s tsk.relicBuff.charm.sc
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The charm glows softly... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.sc"},"color": "green"},{"text":" Maximum Stomach Capacity","color": "green"}]

scoreboard players reset @s tsk.relicTemp

