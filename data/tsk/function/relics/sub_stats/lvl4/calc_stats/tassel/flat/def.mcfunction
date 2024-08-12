tag @s add tsk.relicBuffApplied.substat2.tassel
tag @s add tsk.relicBuff.substat2.flat.tassel.def
scoreboard players operation @s tsk.relicBuff.substat2.tassel.def = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat2.tassel.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.tassel.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub2

