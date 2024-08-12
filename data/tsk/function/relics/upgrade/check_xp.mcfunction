
execute if score $tsk.currentXp tsk.relic.xpNeeded >= $tsk.neededXp tsk.relic.xpNeeded run function tsk:relics/upgrade/level_math
execute if score $tsk.currentXp tsk.relic.xpNeeded <= $tsk.neededXp tsk.relic.xpNeeded run function tsk:relics/upgrade/merge_values