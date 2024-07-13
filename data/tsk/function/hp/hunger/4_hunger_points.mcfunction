execute as @s if score @s tsk.maxHunger >= @s tsk.hungerBar run scoreboard players add @s tsk.hungerBar 4
execute as @s if score @s tsk.maxHp >= @s tsk.hp run scoreboard players add @s tsk.hp 20
tag @s add tsk.ate
scoreboard players set @s tsk.digestionTimer 1200
advancement revoke @s only tsk:ate/4_hunger_points