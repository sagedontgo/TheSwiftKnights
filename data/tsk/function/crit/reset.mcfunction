scoreboard players add @s tsk.critHitCount 1
execute if score @s tsk.critHitCount matches 2 run scoreboard players operation @s tsk.str = @s tsk.strBackup
execute if score @s tsk.critHitCount matches 2 run tag @s remove tsk.hitCrit
execute if score @s tsk.critHitCount matches 2 run scoreboard players reset @s tsk.critHitCount
advancement revoke @s only tsk:crit/entity_hit
