playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 100 2
tag @s add tsk.mermaidssong
team join tsk.hostiles @s
effect give @a[distance=1..16] blindness 14 1 true
effect give @a[distance=1..16] slowness 14 127 true
effect give @a[distance=1..16] jump_boost 14 127 true
scoreboard players set @s tsk.mermaidssong.timer 300
effect give @s invisibility 14 1 true
effect give @s speed 14 2 false
effect give @s jump_boost 14 2 false

playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 2
scoreboard players set @s tsk.actionbarSwitch 50
title @s actionbar [{"text": "🗡 ","color": "red"},{"text": "Used ","color": "white"},{"text": "Mermaid's Song","bold": true,"color": "green"},{"text": " (-50 Mana)","color": "gray"}]
execute as @s store result score @s tsk.ultRegenerate run loot spawn ~ ~ ~ loot tsk:randomize
scoreboard players remove @s tsk.mana 50
scoreboard players reset @s tsk.leftClick
scoreboard players reset @s tsk.rightClick