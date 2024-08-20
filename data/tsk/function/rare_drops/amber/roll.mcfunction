execute store result score $tsk.rareDrop.amber tsk.randomVal run random value 0..100
execute if score $tsk.rareDrop.amber tsk.randomVal <= @s tsk.luck run function tsk:rare_drops/amber/drop
scoreboard players reset $tsk.rareDrop.amber tsk.randomVal
advancement revoke @s only tsk:rare_drops/ores/amber
