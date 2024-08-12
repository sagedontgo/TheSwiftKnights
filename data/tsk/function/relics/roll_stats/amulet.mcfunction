execute store result score $tsk.statBuffType tsk.randomVal run random value 1..2
execute store result score $tsk.statBuff tsk.randomVal run random value 1..2
execute store result score $tsk.statBuffValue tsk.randomVal run random value 5..12

execute store result storage tsk:storage statBuff.value int 1 run scoreboard players get $tsk.statBuffValue tsk.randomVal

execute if score $tsk.statBuffType tsk.randomVal matches 1 if score $tsk.statBuff tsk.randomVal matches 1 run function tsk:relics/apply_stats/amulets/flat/mana_max with storage tsk:storage statBuff
execute if score $tsk.statBuffType tsk.randomVal matches 2 if score $tsk.statBuff tsk.randomVal matches 1 run function tsk:relics/apply_stats/amulets/percentage/mana_max with storage tsk:storage statBuff
execute if score $tsk.statBuffType tsk.randomVal matches 1 if score $tsk.statBuff tsk.randomVal matches 2 run function tsk:relics/apply_stats/amulets/flat/mana_regen with storage tsk:storage statBuff 
execute if score $tsk.statBuffType tsk.randomVal matches 2 if score $tsk.statBuff tsk.randomVal matches 2 run function tsk:relics/apply_stats/amulets/percentage/mana_regen with storage tsk:storage statBuff 

data remove storage tsk:storage statBuff
scoreboard players reset $tsk.statBuffType tsk.randomVal
scoreboard players reset $tsk.statBuff tsk.randomVal
scoreboard players reset $tsk.statBuffValue tsk.randomVal