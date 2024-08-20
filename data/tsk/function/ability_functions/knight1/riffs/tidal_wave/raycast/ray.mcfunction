particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0.1 5
particle minecraft:cloud ~ ~ ~ 0.05 0.05 0.05 0.05 1
particle minecraft:bubble_column_up ~ ~ ~ 0.03 0.03 0.03 0.08 15
particle dust{scale:3,color:[0.0,0.5,1.0]} ~ ~ ~ 0 0 0 100 5
particle dolphin ~ ~ ~ 0.1 0.1 0.1 0.08 10
execute if score #hit tsk.castTemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!tsk.rayMarker,dx=0,sort=nearest,type=#tsk:all] run function tsk:ability_functions/knight1/riffs/tidal_wave/raycast/check_hit_entity
execute unless block ~ ~ ~ #tsk:passable run function tsk:ability_functions/knight1/riffs/tidal_wave/raycast/hit_block
scoreboard players add #distance tsk.castTemp 1
execute if score #hit tsk.castTemp matches 0 if score #distance tsk.castTemp matches ..150 positioned ^ ^ ^0.1 run function tsk:ability_functions/knight1/riffs/tidal_wave/raycast/ray

# 


