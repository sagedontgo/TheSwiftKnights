tag @s add tsk.relicBuffApplied.substat3.charm
tag @s add tsk.relicBuff.substat3.flat.charm.def
scoreboard players operation @s tsk.relicBuff.substat3.charm.def = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat3.charm.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

