summon area_effect_cloud ~ ~ ~ {Particle:"dripping_water",ReapplicationDelay:20,Radius:3f,RadiusPerTick:0.2f,Duration:100,Tags:["knight1_ability1"]}
execute as @e[sort=nearest,limit=1,type=area_effect_cloud,tag=knight1_ability1] at @s run scoreboard players operation @s tsk.id = @p tsk.id
playsound minecraft:entity.boat.paddle_water block @a[distance=..23] ~ ~ ~ 100 0

scoreboard players set @s tsk.actionbarSwitch 50
title @s actionbar [{"text": "🗡 ","color": "green"},{"text": "Used ","color": "white"},{"text": "Should've Said No","bold": true,"color": "green"},{"text": " (-50 Mana)","color": "gray"}]
execute as @s store result score @s tsk.ultRegenerate run loot spawn ~ ~ ~ loot tsk:randomize
scoreboard players remove @s tsk.mana 50
scoreboard players reset @s tsk.leftClick