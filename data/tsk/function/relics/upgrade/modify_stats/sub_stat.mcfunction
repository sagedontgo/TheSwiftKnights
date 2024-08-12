execute store result score $tsk.subStatBuffType tsk.randomVal run random value 1..2
execute store result score $tsk.subStatBuff tsk.randomVal run random value 1..13
execute store result score $tsk.subStatBuffValue tsk.randomVal run random value 15..30

execute store result storage tsk:storage statBuff.value int 1 run scoreboard players get $tsk.subStatBuffValue tsk.randomVal

execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 1 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/crit_dmg
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 2 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/def
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 3 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/mana_max
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 4 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/mana_regen
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 5 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/max_hp
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 6 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/sc
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 7 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/strength
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 8 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/def
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 9 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/max_hp
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 10 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/sc
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 11 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/mana_max
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 12 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/mana_regen
execute if score $tsk.subStatBuffType tsk.randomVal matches 1 if score $tsk.subStatBuff tsk.randomVal matches 13 run function tsk:relics/upgrade/modify_stats/sub_stats/flat/strength

execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 1 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/crit_rate
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 2 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/def
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 3 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/mana_max
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 4 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/mana_regen
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 5 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/max_hp
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 6 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/strength
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 7 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/crit_rate
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 8 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/def
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 9 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/mana_max
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 10 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/mana_regen
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 11 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/max_hp
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 12 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/strength
execute if score $tsk.subStatBuffType tsk.randomVal matches 2 if score $tsk.subStatBuff tsk.randomVal matches 13 run function tsk:relics/upgrade/modify_stats/sub_stats/percentage/def









scoreboard players reset $tsk.subStatBuffType tsk.randomVal
scoreboard players reset $tsk.subStatBuff tsk.randomVal
