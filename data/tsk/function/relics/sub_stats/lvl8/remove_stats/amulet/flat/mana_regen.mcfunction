tag @s remove tsk.relicBuffApplied.substat4.amulet
tag @s remove tsk.relicBuff.substat4.flat.amulet.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.substat4.amulet.manaRegen
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.amulet.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat4.amulet.manaRegen


 scoreboard players reset @s tsk.relicTemp.sub4

