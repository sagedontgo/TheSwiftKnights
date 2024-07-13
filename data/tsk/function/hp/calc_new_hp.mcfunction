scoreboard players operation @s tsk.hp -= @s tsk.hpDiff
execute as @s run function tsk:hp/hp_display

scoreboard players reset @s tsk.hpDiff
# scoreboard players reset @s tsk.hpDiffStorage