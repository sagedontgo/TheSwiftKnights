execute store result score $tsk.rareDrop.blueOpal tsk.randomVal run random value 0..140
execute if score $tsk.rareDrop.blueOpal tsk.randomVal <= @s tsk.luck run function tsk:rare_drops/blue_opal/drop
scoreboard players reset $tsk.rareDrop.blueOpal tsk.randomVal
scoreboard players reset @s tsk.brokeBlock.deepslateLapisOre