scoreboard players operation $temp.critDmgPercentage tsk.tempCritDmg = @s tsk.critDamagePercentage
scoreboard players operation $temp.strength tsk.tempCritDmg = @s tsk.str
scoreboard players operation $temp.critDamage tsk.tempCritDmg = @s tsk.str

scoreboard players operation $temp.strength tsk.tempCritDmg *= $temp.critDmgPercentage tsk.tempCritDmg
scoreboard players operation $temp.strength tsk.tempCritDmg /= $100 tsk.int
scoreboard players operation $temp.critDamage tsk.tempCritDmg += $temp.strength tsk.tempCritDmg
scoreboard players operation @s tsk.critDamage = $temp.critDamage tsk.tempCritDmg
scoreboard players operation @s tsk.critDamage.stat = @s tsk.critDamage

scoreboard players reset $temp.critDmgPercentage tsk.tempCritDmg
scoreboard players reset $temp.strength tsk.tempCritDmg 
scoreboard players reset $temp.critDamage tsk.tempCritDmg 