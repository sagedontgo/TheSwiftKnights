tag @s remove tsk.relicBuffApplied.substat3.necklace
tag @s remove tsk.relicBuff.substat3.percentage.necklace.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat3.necklace.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.necklace.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.necklace.str


 scoreboard players reset @s tsk.relicTemp.sub3

