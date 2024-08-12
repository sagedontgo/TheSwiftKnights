tag @s remove tsk.relicBuffApplied.substat2.talisman
tag @s remove tsk.relicBuff.substat2.flat.talisman.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.substat2.talisman.manaRegen
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat2.talisman.manaRegen


 scoreboard players reset @s tsk.relicTemp.sub2

