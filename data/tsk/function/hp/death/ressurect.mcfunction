gamemode survival @s
scoreboard players set @s tsk.hp 25
effect give @s slowness 3 2 false
particle totem_of_undying ~ ~ ~
tag @s remove tsk.died
scoreboard players reset $tsk.randomVal