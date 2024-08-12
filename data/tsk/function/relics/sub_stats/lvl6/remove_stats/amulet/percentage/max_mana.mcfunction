tag @s remove tsk.relicBuffApplied.substat3.amulet
tag @s remove tsk.relicBuff.substat3.percentage.amulet.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.substat3.amulet.maxMana
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.amulet.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.amulet.maxMana


 scoreboard players reset @s tsk.relicTemp.sub3

