scoreboard players operation $temp.worldLevel tsk.calcNewHp = $level tsk.worldLevel
scoreboard players operation $tier2.baseHp tsk.calcNewHp = $tier2 tsk.tierBaseHp
scoreboard players operation $temp.tier2.mobLevel tsk.calcNewHp = @s tsk.mobLevel

execute store result score $tier2.temp.lvl tsk.calcNewHp run scoreboard players operation $temp.tier2.mobLevel tsk.calcNewHp *= $10000 tsk.int
execute store result score $temp.tier2.baseHp tsk.calcNewHp run scoreboard players operation $tier2.baseHp tsk.calcNewHp *= $100 tsk.int
execute store result score $temp.worldLevel tsk.calcNewHp run scoreboard players operation $temp.worldLevel tsk.calcNewHp *= $100 tsk.int
execute store result score $tier2.temp.x tsk.calcNewHp run scoreboard players get $tier2 tsk.tierScalingValue
execute run scoreboard players operation $tier2.temp.x tsk.calcNewHp += $temp.worldLevel tsk.calcNewHp

execute store result score $tier2.temp.y tsk.calcNewHp run scoreboard players get $temp.tier2.baseHp tsk.calcNewHp
execute store result score $tier2.temp.z tsk.calcNewHp run scoreboard players operation $tier2.temp.y tsk.calcNewHp *= $tier2.temp.x tsk.calcNewHp

execute store result score $tier2.temp.lvl tsk.calcNewHp run scoreboard players operation $temp.tier2.mobLevel tsk.calcNewHp /= $2 tsk.int

execute store result score $tier2.temp.z tsk.calcNewHp run scoreboard players operation $tier2.temp.z tsk.calcNewHp += $tier2.temp.lvl tsk.calcNewHp
execute store result score $tier2.temp.z tsk.calcNewHp run scoreboard players operation $tier2.temp.z tsk.calcNewHp /= $10000 tsk.int


execute store result score @s tsk.hp run scoreboard players get $tier2.temp.z tsk.calcNewHp

scoreboard players reset $tier2.baseHp tsk.calcNewHp
scoreboard players reset $temp.tier2.baseHp tsk.calcNewHp
scoreboard players reset $temp.tier2.mobLevel tsk.calcNewHp
scoreboard players reset $temp.worldLevel tsk.calcNewHp
scoreboard players reset $tier2.temp.lvl tsk.calcNewHp
scoreboard players reset $tier2.temp.x tsk.calcNewHp
scoreboard players reset $tier2.temp.y tsk.calcNewHp
scoreboard players reset $tier2.temp.z tsk.calcNewHp