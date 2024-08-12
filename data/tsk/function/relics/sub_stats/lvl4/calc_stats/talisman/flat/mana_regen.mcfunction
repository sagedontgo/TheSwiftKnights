tag @s add tsk.relicBuffApplied.substat2.talisman
tag @s add tsk.relicBuff.substat2.flat.talisman.manaRegen
scoreboard players operation @s tsk.relicBuff.substat2.talisman.manaRegen = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.substat2.talisman.manaRegen
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.talisman.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub2

