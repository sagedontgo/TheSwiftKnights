tag @s remove tsk.relicBuffApplied.substat3.charm
tag @s remove tsk.relicBuff.substat3.flat.charm.maxMana
scoreboard players operation @s tsk.manaMax -= @s tsk.relicBuff.substat3.charm.maxMana
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.maxMana"},"color": "red"},{"text":" Maximum Mana","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.charm.maxMana


 scoreboard players reset @s tsk.relicTemp.sub3

