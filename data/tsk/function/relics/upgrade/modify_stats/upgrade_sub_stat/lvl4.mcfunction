execute store result score $tsk.oldLevel.sub2 tsk.relicTemp.sub2 run data get entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactBuffs.sub2
execute unless score $tsk.randomVal tsk.relicTemp.sub2 matches 1.. store result score $tsk.randomVal tsk.relicTemp.sub2 run random value 1..12
scoreboard players operation $tsk.newLevel.sub2 tsk.relicTemp.sub2 = $tsk.oldLevel.sub2 tsk.relicTemp.sub2
scoreboard players operation $tsk.newLevel.sub2 tsk.relicTemp.sub2 += $tsk.randomVal tsk.relicTemp.sub2

execute store result score $tsk.buffType tsk.relicTemp.sub2 run data get entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat2


execute store result storage tsk:storage loreLevel.sub2.value int 1 run scoreboard players get $tsk.newLevel.sub2 tsk.relicTemp.sub2

execute if score $tsk.buffType tsk.relicTemp.sub2 matches 6 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/flat/sc with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 7 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/flat/def with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 9 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/flat/max_hp with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 11 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/flat/mana_max with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 13 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/flat/mana_regen with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 14 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/flat/strength with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 16 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/flat/crit_dmg with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 10 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/percentage/def with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 15 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/percentage/max_hp with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 17 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/percentage/mana_max with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 18 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/percentage/crit_rate with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 19 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/percentage/mana_regen with storage tsk:storage loreLevel.sub2
execute if score $tsk.buffType tsk.relicTemp.sub2 matches 20 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl4/percentage/strength with storage tsk:storage loreLevel.sub2

execute store result storage tsk:storage newLevel.sub2.value int 1 run scoreboard players get $tsk.newLevel.sub2 tsk.relicTemp.sub2



data remove storage tsk:storage newLevel.sub2
data remove storage tsk:storage loreLevel.sub2
scoreboard players reset $tsk.buffType tsk.relicTemp.sub2
scoreboard players reset $tsk.oldLevel.sub2 tsk.relicTemp.sub2
scoreboard players reset $tsk.newLevel.sub2 tsk.relicTemp.sub2
scoreboard players reset $tsk.randomVal tsk.relicTemp.sub2