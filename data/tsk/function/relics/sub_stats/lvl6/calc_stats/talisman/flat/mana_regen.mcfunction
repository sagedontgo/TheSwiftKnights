tag @s add tsk.relicBuffApplied.substat3.talisman
tag @s add tsk.relicBuff.substat3.flat.talisman.manaRegen
scoreboard players operation @s tsk.relicBuff.substat3.talisman.manaRegen = @s tsk.relicTemp.sub3
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.substat3.talisman.manaRegen
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat3.talisman.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub3

