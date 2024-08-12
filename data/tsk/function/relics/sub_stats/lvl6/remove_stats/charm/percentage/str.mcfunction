tag @s remove tsk.relicBuffApplied.substat3.charm
tag @s remove tsk.relicBuff.substat3.percentage.charm.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat3.charm.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.str"},"color": "red"},{"text":" Maximum HP","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.charm.str


 scoreboard players reset @s tsk.relicTemp.sub3

