tag @s remove tsk.relicBuffApplied.substat2.amulet
tag @s remove tsk.relicBuff.substat2.flat.amulet.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.substat2.amulet.maxMana
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.amulet.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.amulet.maxMana


 scoreboard players reset @s tsk.relicTemp.sub2

