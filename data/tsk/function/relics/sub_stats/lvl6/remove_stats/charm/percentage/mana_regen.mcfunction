tag @s remove tsk.relicBuffApplied.substat3.charm
tag @s remove tsk.relicBuff.substat3.percentage.charm.manaRegen
scoreboard players operation @s tsk.manaRegenRate -= @s tsk.relicBuff.substat3.charm.manaRegen
tellraw @s [{"text": "","color": "gray","extra": [{"text":" -","color":"red"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.charm.manaRegen"},"color": "red"},{"text":" Mana Regeneration Rate","color": "red"}]
 scoreboard players reset @s tsk.relicBuff.substat3.charm.manaRegen


 scoreboard players reset @s tsk.relicTemp.sub3

