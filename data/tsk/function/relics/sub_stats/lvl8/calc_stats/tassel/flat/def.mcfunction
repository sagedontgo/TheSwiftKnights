tag @s add tsk.relicBuffApplied.substat4.tassel
tag @s add tsk.relicBuff.substat4.flat.tassel.def
scoreboard players operation @s tsk.relicBuff.substat4.tassel.def = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat4.tassel.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.tassel.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub4
