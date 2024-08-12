tag @s add tsk.relicBuffApplied.substat1.talisman
tag @s add tsk.relicBuff.substat1.flat.talisman.def
scoreboard players operation @s tsk.relicBuff.substat1.talisman.def = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat1.talisman.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.talisman.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub1

