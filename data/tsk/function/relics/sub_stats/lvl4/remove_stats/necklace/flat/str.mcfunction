tag @s remove tsk.relicBuffApplied.substat2.necklace
tag @s remove tsk.relicBuff.substat2.flat.necklace.str
scoreboard players operation @s tsk.str -= @s tsk.relicBuff.substat2.necklace.str
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.necklace.str"},"color": "red"},{"text":" Attack Strength","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.necklace.str


 scoreboard players reset @s tsk.relicTemp.sub2

