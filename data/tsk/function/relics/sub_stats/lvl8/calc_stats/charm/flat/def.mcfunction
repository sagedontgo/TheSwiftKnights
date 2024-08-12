tag @s add tsk.relicBuffApplied.substat4.charm
tag @s add tsk.relicBuff.substat4.flat.charm.def
scoreboard players operation @s tsk.relicBuff.substat4.charm.def = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.def += @s tsk.relicBuff.substat4.charm.def 
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.charm.def"},"color": "green"},{"text":" DEF","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub4

