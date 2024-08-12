tag @s remove tsk.relicBuffApplied.substat2.tassel
tag @s remove tsk.relicBuff.substat2.flat.tassel.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.substat2.tassel.maxMana
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.tassel.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.tassel.maxMana


 scoreboard players reset @s tsk.relicTemp.sub2

