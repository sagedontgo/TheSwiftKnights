summon marker ~ ~ ~ {Tags:[tsk.halleyscomet.marker]}
summon marker ~ ~ ~ {Tags:[tsk.halleyscomet.marker]}
summon marker ~ ~ ~ {Tags:[tsk.halleyscomet.marker]}
summon marker ~ ~ ~ {Tags:[tsk.halleyscomet.marker]}
summon marker ~ ~ ~ {Tags:[tsk.halleyscomet.marker]}
summon marker ~ ~ ~ {Tags:[tsk.halleyscomet.marker]}
spreadplayers ~ ~ 8 20 false @e[type=marker,tag=tsk.halleyscomet.marker,limit=6]
execute as @e[type=marker,tag=tsk.halleyscomet.marker,limit=6,distance=..20] at @s run function tsk:debut_knight/ultimate/comet
execute as @e[type=#tsk:attackable,distance=1..16] run damage @s 8 tsk:debut_knight/secondary_attack 
effect give @s resistance 2 128 true
effect give @s levitation 3 19 true
effect give @s slow_falling 60 2 true

playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 2
scoreboard players set @s tsk.actionbarSwitch 50
title @s actionbar [{"text": "🗡 ","color": "gold"},{"text": "Used ","color": "white"},{"text": "Halley's Comet","bold": true,"color": "green"},{"text": " (-50 Mana)","color": "gray"}]
execute as @s store result score @s tsk.ultRegenerate run loot spawn ~ ~ ~ loot tsk:randomize
scoreboard players remove @s tsk.mana 50
# scoreboard players remove @s tsk.ultPercentage 100
scoreboard players reset @s tsk.leftClick
scoreboard players reset @s tsk.rightClick