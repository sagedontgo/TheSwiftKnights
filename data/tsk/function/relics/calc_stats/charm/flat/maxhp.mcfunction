tag @s add tsk.relicBuffApplied.charm
tag @s add tsk.relicBuff.flat.charm.maxHp
scoreboard players operation @s tsk.relicBuff.charm.maxHp = @s tsk.relicTemp
scoreboard players operation @s tsk.maxHp += @s tsk.relicBuff.charm.maxHp
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The charm glows softly... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.maxHp"},"color": "green"},{"text":" Maximum HP","color": "green"}]




scoreboard players reset @s tsk.relicTemp

