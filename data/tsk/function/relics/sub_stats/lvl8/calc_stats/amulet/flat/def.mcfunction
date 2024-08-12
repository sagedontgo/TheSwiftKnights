tag @s add tsk.relicBuffApplied.substat4.amulet
tag @s add tsk.relicBuff.substat4.flat.amulet.def
scoreboard players operation @s tsk.relicBuff.substat4.amulet.def = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat4.amulet.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub4

