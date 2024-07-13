execute as @s if score @s tsk.maxHunger >= @s tsk.hungerBar run scoreboard players add @s tsk.hungerBar 2
execute as @s if score @s tsk.maxHp >= @s tsk.hp run scoreboard players add @s tsk.hp 10
tag @s add tsk.ate
scoreboard players set @s tsk.digestionTimer 1200
advancement revoke @s only tsk:ate/2_hunger_points