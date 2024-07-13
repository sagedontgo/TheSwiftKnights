playsound entity.bat.takeoff neutral @s ^ ^ ^-4 20 1 0
scoreboard players set $strength player_motion.api.launch 20000
function player_motion:api/launch_looking
scoreboard players add @s tsk.hp 1
tag @s remove tsk.dashReady


execute as @e[sort=nearest,distance=0.01..3,type=!item] at @s run function tsk:combat/dash_hit