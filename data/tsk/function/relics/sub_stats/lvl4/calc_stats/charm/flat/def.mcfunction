tag @s add tsk.relicBuffApplied.substat2.charm
tag @s add tsk.relicBuff.substat2.flat.charm.def
scoreboard players operation @s tsk.relicBuff.substat2.charm.def = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat2.charm.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.charm.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub2

