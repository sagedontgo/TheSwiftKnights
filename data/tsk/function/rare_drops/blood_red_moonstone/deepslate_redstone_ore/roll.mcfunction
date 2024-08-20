execute store result score $tsk.rareDrop.bloodRedMoonstone tsk.randomVal run random value 0..500
execute if score $tsk.rareDrop.bloodRedMoonstone tsk.randomVal <= @s tsk.luck run function tsk:rare_drops/blood_red_moonstone/drop
scoreboard players reset $tsk.rareDrop.bloodRedMoonstone tsk.randomVal
scoreboard players reset @s tsk.brokeBlock.deepslateRedstoneOre