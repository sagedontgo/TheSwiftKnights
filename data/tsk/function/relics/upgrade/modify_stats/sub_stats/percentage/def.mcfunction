

execute if score $tsk.level tsk.relic.level matches 2 at @s run function tsk:relics/upgrade/modify_stats/macro_functions/sub_stats/lvl_2 with storage tsk:storage statBuff
execute if score $tsk.level tsk.relic.level matches 4 at @s run function tsk:relics/upgrade/modify_stats/macro_functions/sub_stats/lvl_4 with storage tsk:storage statBuff
execute if score $tsk.level tsk.relic.level matches 6 at @s run function tsk:relics/upgrade/modify_stats/macro_functions/sub_stats/lvl_6 with storage tsk:storage statBuff
execute if score $tsk.level tsk.relic.level matches 8 at @s run function tsk:relics/upgrade/modify_stats/macro_functions/sub_stats/lvl_8 with storage tsk:storage statBuff

execute if score $tsk.level tsk.relic.level matches 2 at @s run function tsk:relics/upgrade/modify_stats/lore/sub_stats/lvl2/percentage/def with storage tsk:storage statBuff
execute if score $tsk.level tsk.relic.level matches 4 at @s run function tsk:relics/upgrade/modify_stats/lore/sub_stats/lvl4/percentage/def with storage tsk:storage statBuff
execute if score $tsk.level tsk.relic.level matches 6 at @s run function tsk:relics/upgrade/modify_stats/lore/sub_stats/lvl6/percentage/def with storage tsk:storage statBuff
execute if score $tsk.level tsk.relic.level matches 8 at @s run function tsk:relics/upgrade/modify_stats/lore/sub_stats/lvl8/percentage/def with storage tsk:storage statBuff
data remove storage tsk:storage statBuff