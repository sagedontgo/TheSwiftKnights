tag @s add tsk.relicBuffApplied.substat1.necklace
tag @s add tsk.relicBuff.substat1.flat.necklace.manaRegen
scoreboard players operation @s tsk.relicBuff.substat1.necklace.manaRegen = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.substat1.necklace.manaRegen
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.necklace.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub1

