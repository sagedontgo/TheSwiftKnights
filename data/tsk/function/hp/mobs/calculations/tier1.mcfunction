scoreboard players operation $temp.worldLevel tsk.calcNewHp = $level tsk.worldLevel
scoreboard players operation $tier1.baseHp tsk.calcNewHp = $tier1 tsk.tierBaseHp
scoreboard players operation $temp.tier1.mobLevel tsk.calcNewHp = @s tsk.mobLevel

execute store result score $tier1.temp.lvl tsk.calcNewHp run scoreboard players operation $temp.tier1.mobLevel tsk.calcNewHp *= $10000 tsk.int
execute store result score $temp.tier1.baseHp tsk.calcNewHp run scoreboard players operation $tier1.baseHp tsk.calcNewHp *= $100 tsk.int
execute store result score $temp.worldLevel tsk.calcNewHp run scoreboard players operation $temp.worldLevel tsk.calcNewHp *= $100 tsk.int
execute store result score $tier1.temp.x tsk.calcNewHp run scoreboard players get $tier1 tsk.tierScalingValue
execute run scoreboard players operation $tier1.temp.x tsk.calcNewHp += $temp.worldLevel tsk.calcNewHp

execute store result score $tier1.temp.y tsk.calcNewHp run scoreboard players get $temp.tier1.baseHp tsk.calcNewHp
execute store result score $tier1.temp.z tsk.calcNewHp run scoreboard players operation $tier1.temp.y tsk.calcNewHp *= $tier1.temp.x tsk.calcNewHp

execute store result score $tier1.temp.lvl tsk.calcNewHp run scoreboard players operation $temp.tier1.mobLevel tsk.calcNewHp /= $2 tsk.int

execute store result score $tier1.temp.z tsk.calcNewHp run scoreboard players operation $tier1.temp.z tsk.calcNewHp += $tier1.temp.lvl tsk.calcNewHp
execute store result score $tier1.temp.z tsk.calcNewHp run scoreboard players operation $tier1.temp.z tsk.calcNewHp /= $10000 tsk.int


execute store result score @s tsk.hp run scoreboard players get $tier1.temp.z tsk.calcNewHp

scoreboard players reset $tier1.baseHp tsk.calcNewHp
scoreboard players reset $temp.tier1.baseHp tsk.calcNewHp
scoreboard players reset $temp.tier1.mobLevel tsk.calcNewHp
scoreboard players reset $temp.worldLevel tsk.calcNewHp
scoreboard players reset $tier1.temp.lvl tsk.calcNewHp
scoreboard players reset $tier1.temp.x tsk.calcNewHp
scoreboard players reset $tier1.temp.y tsk.calcNewHp
scoreboard players reset $tier1.temp.z tsk.calcNewHp