tag @s add tsk.relicBuffApplied.substat2.necklace
tag @s add tsk.relicBuff.substat2.flat.necklace.def
scoreboard players operation @s tsk.relicBuff.substat2.necklace.def = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat2.necklace.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.necklace.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub2

