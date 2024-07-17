playsound entity.bat.takeoff neutral @s ^ ^ ^-4 20 1 0
scoreboard players set $strength player_motion.api.launch 20000
function player_motion:api/launch_looking
tag @s remove tsk.dashReady


execute as @e[sort=nearest,distance=0.01..5,type=!#tsk:exclude] at @s run function tsk:combat/dash_hit with storage tsk:attribute attribute