execute store result score $tsk.rareDrop.fireOpal tsk.randomVal run random value 0..899
execute if score $tsk.rareDrop.fireOpal tsk.randomVal <= @s tsk.luck run function tsk:rare_drops/fire_opal/drop
scoreboard players reset $tsk.rareDrop.fireOpal tsk.randomVal
scoreboard players reset @s tsk.brokeBlock.magmaBlock