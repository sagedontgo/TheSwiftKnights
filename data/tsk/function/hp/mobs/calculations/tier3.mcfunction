scoreboard players operation $temp.worldLevel tsk.calcNewHp = $level tsk.worldLevel
scoreboard players operation $tier3.baseHp tsk.calcNewHp = $tier3 tsk.tierBaseHp


execute store result score $temp.tier3.baseHp tsk.calcNewHp run scoreboard players operation $tier3.baseHp tsk.calcNewHp *= $100 tsk.int
execute store result score $temp.worldLevel tsk.calcNewHp run scoreboard players operation $temp.worldLevel tsk.calcNewHp *= $100 tsk.int
execute store result score $tier3.temp.x tsk.calcNewHp run scoreboard players get $tier3 tsk.tierScalingValue
execute run scoreboard players operation $tier3.temp.x tsk.calcNewHp += $temp.worldLevel tsk.calcNewHp
execute store result score $tier3.temp.y tsk.calcNewHp run scoreboard players get $temp.tier3.baseHp tsk.calcNewHp
execute store result score $tier3.temp.z tsk.calcNewHp run scoreboard players operation $tier3.temp.y tsk.calcNewHp *= $tier3.temp.x tsk.calcNewHp
execute store result score $tier3.temp.z tsk.calcNewHp run scoreboard players operation $tier3.temp.z tsk.calcNewHp /= $10000 tsk.int
execute store result score @s tsk.hp run scoreboard players get $tier3.temp.z tsk.calcNewHp

scoreboard players reset $tier3.baseHp tsk.calcNewHp
scoreboard players reset $temp.tier3.baseHp tsk.calcNewHp
scoreboard players reset $temp.worldLevel tsk.calcNewHp
scoreboard players reset $tier3.temp.x tsk.calcNewHp
scoreboard players reset $tier3.temp.y tsk.calcNewHp
scoreboard players reset $tier3.temp.z tsk.calcNewHp