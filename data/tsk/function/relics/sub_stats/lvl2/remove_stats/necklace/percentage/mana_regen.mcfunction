tag @s remove tsk.relicBuffApplied.substat1.necklace
tag @s remove tsk.relicBuff.substat1.percentage.necklace.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.substat1.necklace.manaRegen
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.necklace.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat1.necklace.manaRegen


 scoreboard players reset @s tsk.relicTemp.sub1

