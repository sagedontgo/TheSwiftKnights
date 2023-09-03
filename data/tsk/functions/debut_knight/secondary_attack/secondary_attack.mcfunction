tag @s add tsk.icefrozenground.invul
execute positioned ~2 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-2 ~ ~ positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~2 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-2 ~ ~1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~2 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-2 ~ ~-1 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~1 ~ ~-2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~ ~ ~-2 positioned over motion_blocking run setblock ~ ~ ~ snow
execute positioned ~-1 ~ ~-2 positioned over motion_blocking run setblock ~ ~ ~ snow

function tsk:debut_knight/secondary_attack/start_ray

scoreboard players set @s tsk.icefrozenground.timer 10
scoreboard players set @s tsk.actionbarSwitch 50
title @s actionbar [{"text": "🗡 ","color": "green"},{"text": "Used ","color": "white"},{"text": "Ice Frozen Ground","bold": true,"color": "green"},{"text": " (-50 Mana)","color": "gray"}]
execute as @s store result score @s tsk.ultRegenerate run loot spawn ~ ~ ~ loot tsk:randomize
# scoreboard players remove @s tsk.mana 50
scoreboard players reset @s tsk.leftClick
scoreboard players reset @s tsk.rightClick