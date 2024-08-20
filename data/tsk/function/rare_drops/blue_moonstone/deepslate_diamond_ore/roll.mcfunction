execute store result score $tsk.rareDrop.blueMoonstone tsk.randomVal run random value 0..100
execute if score $tsk.rareDrop.blueMoonstone tsk.randomVal <= @s tsk.luck run function tsk:rare_drops/blue_moonstone/drop
scoreboard players reset $tsk.rareDrop.blueMoonstone tsk.randomVal
scoreboard players reset @s tsk.brokeBlock.deepslateDiamondOre