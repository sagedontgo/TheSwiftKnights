execute store result storage tsk:storage level.value int 1 run scoreboard players get $tsk.level tsk.relic.level
execute store result storage tsk:storage currentXp.value int 1 run scoreboard players get $tsk.currentXp tsk.relic.xpNeeded
execute store result storage tsk:storage neededXp.value int 1 run scoreboard players get $tsk.neededXp tsk.relic.xpNeeded


function tsk:relics/upgrade/values/merge_level with storage tsk:storage level
function tsk:relics/upgrade/values/merge_current_xp with storage tsk:storage currentXp
function tsk:relics/upgrade/values/merge_needed_xp with storage tsk:storage neededXp

scoreboard players reset $tsk.currentXp tsk.relic.xpNeeded
scoreboard players reset $tsk.addedXp tsk.relic.xpNeeded
scoreboard players reset $tsk.neededXp tsk.relic.xpNeeded
scoreboard players reset $tsk.level tsk.relic.level
scoreboard players reset $tsk.total tsk.relic.xpTotal
scoreboard players reset $tsk.total tsk.relic.upgradeTotal
data remove storage tsk:storage level
data remove storage tsk:storage currentXp
data remove storage tsk:storage neededXp