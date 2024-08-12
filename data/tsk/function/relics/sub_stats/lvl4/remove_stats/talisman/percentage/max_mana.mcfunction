tag @s remove tsk.relicBuffApplied.substat2.talisman
tag @s remove tsk.relicBuff.substat2.percentage.talisman.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.substat2.talisman.maxMana
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.talisman.maxMana


 scoreboard players reset @s tsk.relicTemp.sub2

