tag @s add tsk.relicBuffApplied.substat4.necklace
tag @s add tsk.relicBuff.substat4.flat.necklace.def
scoreboard players operation @s tsk.relicBuff.substat4.necklace.def = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat4.necklace.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.necklace.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub4

