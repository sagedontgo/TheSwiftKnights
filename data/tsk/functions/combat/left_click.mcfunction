title @s clear
tag @s add tsk.actionbarSwitch
scoreboard players set @s tsk.actionbarSwitch 20
scoreboard players add @s tsk.leftClick 1
# This is temporary, will be using custom unicode when I start working on the resource pack
title @s actionbar {"text": "🗡","color": "green"}
execute if score @s tsk.leftClick matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 0.5
execute if score @s tsk.leftClick matches 2 run playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 1
execute if score @s tsk.leftClick matches 3 run playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 2
advancement revoke @s only tsk:player_hit