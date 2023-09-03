stopsound @s * entity.evoker.prepare_wololo
effect give @s regeneration 10 2 false
playsound entity.wandering_trader.drink_potion voice @s

playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 2
scoreboard players set @s tsk.actionbarSwitch 50
title @s actionbar [{"text": "🗡 ","color": "red"},{"text": "Used ","color": "white"},{"text": "A Perfectly Good Heart","bold": true,"color": "green"},{"text": " (-50 Mana)","color": "gray"}]
execute as @s store result score @s tsk.ultRegenerate run loot spawn ~ ~ ~ loot tsk:randomize
scoreboard players remove @s tsk.mana 50
scoreboard players reset @s tsk.leftClick
scoreboard players reset @s tsk.rightClick