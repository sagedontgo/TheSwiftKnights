execute unless block ~ ~ ~ #tsk:permeable at @s run function tsk:debut_knight/secondary_attack/hit_block
execute if entity @e[type=#tsk:attackable,distance=..2] run function tsk:debut_knight/secondary_attack/hit_entity
scoreboard players remove @s tsk.raySteps 1
tp @s ^ ^ ^0.1
particle item_snowball ~ ~ ~ 0 0 0 0 10 normal
execute if score @s tsk.raySteps matches 1.. if score @s tsk.raySuccess matches 0 at @s run function tsk:debut_knight/secondary_attack/ray