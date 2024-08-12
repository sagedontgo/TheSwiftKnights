tag @s add tsk.abilityIsActive.tranquilTide
scoreboard players set @s tsk.abilityTimer.tranquilTide 60

scoreboard players operation $tsk.regenAmount tsk.math = $1 tsk.int
scoreboard players operation $tsk.temp tsk.math = @s tsk.def
# tsk.def = 20 // tsk.temp = 20
scoreboard players operation $tsk.temp tsk.math /= $10 tsk.int 
# tsk.temp = 10
scoreboard players operation $tsk.regenAmount tsk.math += $tsk.temp tsk.math

execute store result storage tsk:storage regenAmount.value int 1 run scoreboard players get $tsk.regenAmount tsk.math

function tsk:ability_functions/knight1/passive/tranquil_tide/regenerate with storage tsk:storage regenAmount

scoreboard players reset $tsk.temp tsk.math
scoreboard players reset $tsk.regenAmount tsk.math
data remove storage tsk:storage regenAmount