execute as @e[type=#tsk:attackable,distance=..2,tag=!tsk.icefrozenground.invul] at @s run damage @s 5 tsk:debut_knight/secondary_attack
execute at @s run effect give @e[type=#tsk:attackable,distance=..2,tag=!tsk.icefrozenground.invul] slowness 3 2 false 
execute at @s run effect give @e[type=#tsk:attackable,distance=..2,tag=!tsk.icefrozenground.invul] blindness 3 2 false 

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