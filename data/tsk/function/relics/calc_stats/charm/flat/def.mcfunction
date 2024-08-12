tag @s add tsk.relicBuffApplied.charm
tag @s add tsk.relicBuff.flat.charm.def
scoreboard players operation @s tsk.relicBuff.charm.def = @s tsk.relicTemp
scoreboard players operation @s tsk.def += @s tsk.relicBuff.charm.def 
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The charm glows softly... it grants you","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.charm.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp

