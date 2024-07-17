scoreboard players add @s tsk.hitCount 1

execute as @s if score @s tsk.hitCount matches 1 run attribute @s minecraft:player.entity_interaction_range base set 5
execute as @s if score @s tsk.hitCount matches 3 run tag @s add tsk.dashReady
execute as @s if score @s tsk.hitCount matches 5 run function tsk:combat/jump
execute as @s if score @s tsk.hitCount matches 6.. run function tsk:combat/reset


advancement revoke @s only tsk:combat/entity_hit