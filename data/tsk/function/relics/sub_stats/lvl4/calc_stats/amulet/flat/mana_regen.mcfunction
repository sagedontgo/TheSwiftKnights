tag @s add tsk.relicBuffApplied.substat2.amulet
tag @s add tsk.relicBuff.substat2.flat.amulet.manaRegen
scoreboard players operation @s tsk.relicBuff.substat2.amulet.manaRegen = @s tsk.relicTemp.sub2
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.substat2.amulet.manaRegen
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat2.amulet.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub2

