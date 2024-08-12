tag @s remove tsk.relicBuffApplied.substat3.talisman
tag @s remove tsk.relicBuff.substat3.percentage.talisman.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.substat3.talisman.manaRegen
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.talisman.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.talisman.manaRegen


 scoreboard players reset @s tsk.relicTemp.sub3

