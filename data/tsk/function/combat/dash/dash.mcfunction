scoreboard players set @s player_motion.api.launch 15000
function player_motion:api/launch_looking

playsound minecraft:entity.bat.takeoff player @s ~ ~ ~ 1 0.8

execute store result storage tsk:storage dashDamage.value int 1 run scoreboard players get @s tsk.str
execute as @e[type=!#tsk:exclude,type=!player,distance=0.1..8] at @s run function tsk:combat/dash/hit_non_player with storage tsk:storage dashDamage
execute as @e[type=player,distance=0.1..8] at @s run function tsk:combat/dash/hit_player with storage tsk:storage dashDamage

data remove storage tsk:storage dashDamage
tag @s add tsk.dashCooldown
tag @s remove tsk.dashReady
scoreboard players set @s tsk.dashChargePercentActionbarVal 0