tag @s remove tsk.relicBuffApplied.substat2.charm
tag @s remove tsk.relicBuff.substat2.flat.charm.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat2.charm.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.charm.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.charm.str


 scoreboard players reset @s tsk.relicTemp.sub2

