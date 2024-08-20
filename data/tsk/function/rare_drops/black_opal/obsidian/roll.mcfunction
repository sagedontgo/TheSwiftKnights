execute store result score $tsk.rareDrop.blackOpal tsk.randomVal run random value 0..250
execute if score $tsk.rareDrop.blackOpal tsk.randomVal <= @s tsk.luck run function tsk:rare_drops/black_opal/drop
scoreboard players reset $tsk.rareDrop.blackOpal tsk.randomVal
scoreboard players reset @s tsk.brokeBlock.obsidian