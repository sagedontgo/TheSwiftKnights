execute if score $tsk.level tsk.relic.level matches ..12 run scoreboard players add $tsk.level tsk.relic.level 1
scoreboard players operation $tsk.currentXp tsk.relic.xpNeeded -= $tsk.neededXp tsk.relic.xpNeeded
playsound entity.player.levelup neutral @s
scoreboard players operation $tsk.neededXp tsk.relic.xpNeeded += $120 tsk.int

execute if score $tsk.level tsk.relic.level matches 1 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 2 run function tsk:relics/upgrade/modify_stats/sub_stat
execute if score $tsk.level tsk.relic.level matches 2 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 3 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 3 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl2
execute if score $tsk.level tsk.relic.level matches 3 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 4 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 4 run function tsk:relics/upgrade/modify_stats/sub_stat
execute if score $tsk.level tsk.relic.level matches 5 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 5 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl2
execute if score $tsk.level tsk.relic.level matches 5 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl4
execute if score $tsk.level tsk.relic.level matches 6 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 6 run function tsk:relics/upgrade/modify_stats/sub_stat
execute if score $tsk.level tsk.relic.level matches 7 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 7 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl2
execute if score $tsk.level tsk.relic.level matches 7 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl4
execute if score $tsk.level tsk.relic.level matches 7 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl6
execute if score $tsk.level tsk.relic.level matches 8 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 8 run function tsk:relics/upgrade/modify_stats/sub_stat
execute if score $tsk.level tsk.relic.level matches 9 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 9 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl2
execute if score $tsk.level tsk.relic.level matches 9 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl4
execute if score $tsk.level tsk.relic.level matches 9 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl6
execute if score $tsk.level tsk.relic.level matches 9 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl8
execute if score $tsk.level tsk.relic.level matches 10 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 10 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl2
execute if score $tsk.level tsk.relic.level matches 10 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl4
execute if score $tsk.level tsk.relic.level matches 10 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl6
execute if score $tsk.level tsk.relic.level matches 10 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl8
execute if score $tsk.level tsk.relic.level matches 11 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 11 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl2
execute if score $tsk.level tsk.relic.level matches 11 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl4
execute if score $tsk.level tsk.relic.level matches 11 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl6
execute if score $tsk.level tsk.relic.level matches 11 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl8
execute if score $tsk.level tsk.relic.level matches 12 run function tsk:relics/upgrade/modify_stats/main_stat
execute if score $tsk.level tsk.relic.level matches 12 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl2
execute if score $tsk.level tsk.relic.level matches 12 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl4
execute if score $tsk.level tsk.relic.level matches 12 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl6
execute if score $tsk.level tsk.relic.level matches 12 run function tsk:relics/upgrade/modify_stats/upgrade_sub_stat/lvl8



function tsk:relics/upgrade/check_xp