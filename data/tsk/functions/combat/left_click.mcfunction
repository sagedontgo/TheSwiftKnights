title @s clear
tag @s add tsk.actionbarSwitch
scoreboard players set @s tsk.actionbarSwitch 20
scoreboard players add @s tsk.leftClick 1
# This is temporary, will be using custom unicode when I start working on the resource pack
title @s actionbar {"text": "🗡","color": "green"}
playsound minecraft:entity.evoker.prepare_attack master @s ~ ~ ~ 100 2
advancement revoke @s only tsk:player_hit