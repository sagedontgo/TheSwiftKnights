tag @s remove tsk.relicBuffApplied.substat3.tassel
tag @s remove tsk.relicBuff.substat3.flat.tassel.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.substat3.tassel.manaRegen
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.tassel.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.tassel.manaRegen


 scoreboard players reset @s tsk.relicTemp.sub3

