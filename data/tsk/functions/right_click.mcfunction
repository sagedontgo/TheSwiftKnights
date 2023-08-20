title @s clear
tag @s add tsk.actionbarSwitch
scoreboard players set @s tsk.actionbarSwitch 20
scoreboard players add @s tsk.rightClick 1
title @s actionbar {"text": "🗡️","color": "red"}
playsound minecraft:entity.evoker.prepare_attack master @s ~ ~ ~ 100 2
advancement revoke @s only tsk:player_interacted