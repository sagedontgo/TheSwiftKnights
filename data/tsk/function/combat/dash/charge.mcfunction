$scoreboard players add @s tsk.totalCharge $(value)
$scoreboard players add @s tsk.dashCharge $(value)

scoreboard players operation $tsk.temp tsk.dashChargePercentages = @s tsk.dashChargeNeeded
execute store result score $tsk.temp.25 tsk.dashChargePercentages run scoreboard players operation $tsk.temp tsk.dashChargePercentages *= $25 tsk.int
scoreboard players operation $tsk.temp.25 tsk.dashChargePercentages /= $100 tsk.int

scoreboard players operation $tsk.temp tsk.dashChargePercentages = @s tsk.dashChargeNeeded
execute store result score $tsk.temp.50 tsk.dashChargePercentages run scoreboard players operation $tsk.temp tsk.dashChargePercentages *= $50 tsk.int
scoreboard players operation $tsk.temp.50 tsk.dashChargePercentages /= $100 tsk.int

scoreboard players operation $tsk.temp tsk.dashChargePercentages = @s tsk.dashChargeNeeded
execute store result score $tsk.temp.75 tsk.dashChargePercentages run scoreboard players operation $tsk.temp tsk.dashChargePercentages *= $75 tsk.int
scoreboard players operation $tsk.temp.75 tsk.dashChargePercentages /= $100 tsk.int

scoreboard players operation $tsk.temp.100 tsk.dashChargePercentages = @s tsk.dashChargeNeeded

execute if score @s tsk.dashCharge >= $tsk.temp.25 tsk.dashChargePercentages if score @s tsk.dashCharge >= $tsk.temp.50 tsk.dashChargePercentages if score @s tsk.dashCharge >= $tsk.temp.75 tsk.dashChargePercentages run scoreboard players set @s tsk.dashChargePercentActionbarVal 3
execute if score @s tsk.dashCharge >= $tsk.temp.25 tsk.dashChargePercentages if score @s tsk.dashCharge >= $tsk.temp.50 tsk.dashChargePercentages if score @s tsk.dashCharge < $tsk.temp.75 tsk.dashChargePercentages run scoreboard players set @s tsk.dashChargePercentActionbarVal 2

execute if score @s tsk.dashCharge >= $tsk.temp.25 tsk.dashChargePercentages if score @s tsk.dashCharge < $tsk.temp.50 tsk.dashChargePercentages if score @s tsk.dashCharge < $tsk.temp.75 tsk.dashChargePercentages run scoreboard players set @s tsk.dashChargePercentActionbarVal 1

execute if score @s tsk.dashCharge >= @s tsk.dashChargeNeeded run function tsk:combat/dash/ready



scoreboard players reset $tsk.temp tsk.dashChargePercentages
scoreboard players reset $tsk.temp.25 tsk.dashChargePercentages
scoreboard players reset $tsk.temp.50 tsk.dashChargePercentages
scoreboard players reset $tsk.temp.75 tsk.dashChargePercentages
scoreboard players reset $tsk.temp.100 tsk.dashChargePercentages
