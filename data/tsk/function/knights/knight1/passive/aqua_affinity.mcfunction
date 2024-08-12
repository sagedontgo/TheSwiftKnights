tag @s add tsk.abilityIsActive.aquaAffinity 

scoreboard players operation $tsk.temp tsk.math = @s tsk.mana
scoreboard players operation $tsk.temp tsk.math /= $50 tsk.int
execute store result storage tsk:storage amplifier.value int 1 run scoreboard players get $tsk.temp tsk.math

function tsk:ability_functions/knight1/passive/aqua_affinity/give_effects with storage tsk:storage amplifier

scoreboard players reset $tsk.temp tsk.math 
data remove storage tsk:storage amplifier