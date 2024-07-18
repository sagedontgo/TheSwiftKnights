scoreboard players operation $temp.worldLevel tsk.calcNewHp = $level tsk.worldLevel
scoreboard players operation $tier5.baseHp tsk.calcNewHp = $tier5 tsk.tierBaseHp
scoreboard players operation $temp.tier5.mobLevel tsk.calcNewHp = @s tsk.mobLevel

execute store result score $tier5.temp.lvl tsk.calcNewHp run scoreboard players operation $temp.tier5.mobLevel tsk.calcNewHp *= $10000 tsk.int
execute store result score $temp.tier5.baseHp tsk.calcNewHp run scoreboard players operation $tier5.baseHp tsk.calcNewHp *= $100 tsk.int
execute store result score $temp.worldLevel tsk.calcNewHp run scoreboard players operation $temp.worldLevel tsk.calcNewHp *= $100 tsk.int
execute store result score $tier5.temp.x tsk.calcNewHp run scoreboard players get $tier5 tsk.tierScalingValue
execute run scoreboard players operation $tier5.temp.x tsk.calcNewHp += $temp.worldLevel tsk.calcNewHp

execute store result score $tier5.temp.y tsk.calcNewHp run scoreboard players get $temp.tier5.baseHp tsk.calcNewHp
execute store result score $tier5.temp.z tsk.calcNewHp run scoreboard players operation $tier5.temp.y tsk.calcNewHp *= $tier5.temp.x tsk.calcNewHp

execute store result score $tier5.temp.lvl tsk.calcNewHp run scoreboard players operation $temp.tier5.mobLevel tsk.calcNewHp /= $2 tsk.int

execute store result score $tier5.temp.z tsk.calcNewHp run scoreboard players operation $tier5.temp.z tsk.calcNewHp += $tier5.temp.lvl tsk.calcNewHp
execute store result score $tier5.temp.z tsk.calcNewHp run scoreboard players operation $tier5.temp.z tsk.calcNewHp /= $10000 tsk.int


execute store result score @s tsk.hp run scoreboard players get $tier5.temp.z tsk.calcNewHp

scoreboard players reset $tier5.baseHp tsk.calcNewHp
scoreboard players reset $temp.tier5.baseHp tsk.calcNewHp
scoreboard players reset $temp.tier5.mobLevel tsk.calcNewHp
scoreboard players reset $temp.worldLevel tsk.calcNewHp
scoreboard players reset $tier5.temp.lvl tsk.calcNewHp
scoreboard players reset $tier5.temp.x tsk.calcNewHp
scoreboard players reset $tier5.temp.y tsk.calcNewHp
scoreboard players reset $tier5.temp.z tsk.calcNewHp