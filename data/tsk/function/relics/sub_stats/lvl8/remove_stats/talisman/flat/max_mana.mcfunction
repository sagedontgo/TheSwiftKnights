tag @s remove tsk.relicBuffApplied.substat4.talisman
tag @s remove tsk.relicBuff.substat4.flat.talisman.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.substat4.talisman.maxMana
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.talisman.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.talisman.maxMana


 scoreboard players reset @s tsk.relicTemp.sub4

