title @s clear
tag @s add tsk.actionbarSwitch
scoreboard players set @s tsk.actionbarSwitch 20
scoreboard players add @s tsk.rightClick 1
title @s actionbar {"text": "🗡","color": "red"}
execute if score @s tsk.rightClick matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 0.5
execute if score @s tsk.rightClick matches 2 run playsound minecraft:entity.evoker.prepare_summon hostile @s ~ ~ ~ 1 1
advancement revoke @s only tsk:player_interacted