tag @s add tsk.relicBuffApplied.substat1.talisman
tag @s add tsk.relicBuff.substat1.flat.talisman.maxMana
scoreboard players operation @s tsk.relicBuff.substat1.talisman.maxMana = @s tsk.relicTemp.sub1
scoreboard players operation @s tsk.manaMax += @s tsk.relicBuff.substat1.talisman.maxMana
 
tellraw @s [{"text": "","color": "gray","extra": [{"text":" +","color":"green"}]},{"score":{"name": "@s","objective": "tsk.relicBuff.substat1.talisman.maxMana"},"color": "green"},{"text":" Maximum Mana","color": "green"}]



scoreboard players reset @s tsk.relicTemp.sub1

