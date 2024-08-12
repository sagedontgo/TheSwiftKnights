tag @s add tsk.relicBuffApplied.substat3.necklace
tag @s add tsk.relicBuff.substat3.flat.necklace.def
scoreboard players operation @s tsk.relicBuff.substat3.necklace.def = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat3.necklace.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.necklace.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

