tag @s add tsk.relicBuffApplied.substat4.charm
tag @s add tsk.relicBuff.substat4.flat.charm.manaRegen
scoreboard players operation @s tsk.relicBuff.substat4.charm.manaRegen = @s tsk.relicTemp.sub4
scoreboard players operation @s tsk.manaRegenRate += @s tsk.relicBuff.substat4.charm.manaRegen
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat4.charm.manaRegen"},"color": "green"},{"text":" Mana Regeneration Rate","color": "green"}]




scoreboard players reset @s tsk.relicTemp.sub4

