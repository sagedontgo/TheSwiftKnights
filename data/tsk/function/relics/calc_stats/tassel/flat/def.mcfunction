tag @s add tsk.relicBuffApplied.tassel
tag @s add tsk.relicBuff.flat.tassel.def
scoreboard players operation @s tsk.relicBuff.tassel.def = @s tsk.relicTemp
scoreboard players operation @s tsk.def += @s tsk.relicBuff.tassel.def 
playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"The tassel blows with the breeze... it enhances you with","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.tassel.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp

