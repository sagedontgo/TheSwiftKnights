tag @s remove tsk.relicBuffApplied.substat1.necklace
tag @s remove tsk.relicBuff.substat1.flat.necklace.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.substat1.necklace.maxMana
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.necklace.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.necklace.maxMana


 scoreboard players reset @s tsk.relicTemp.sub1

