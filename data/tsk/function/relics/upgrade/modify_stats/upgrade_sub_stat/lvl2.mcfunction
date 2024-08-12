execute store result score $tsk.oldLevel.sub1 tsk.relicTemp.sub1 run data get entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactBuffs.sub1
execute unless score $tsk.randomVal tsk.relicTemp.sub1 matches 1.. store result score $tsk.randomVal tsk.relicTemp.sub1 run random value 1..12
scoreboard players operation $tsk.newLevel.sub1 tsk.relicTemp.sub1 = $tsk.oldLevel.sub1 tsk.relicTemp.sub1
scoreboard players operation $tsk.newLevel.sub1 tsk.relicTemp.sub1 += $tsk.randomVal tsk.relicTemp.sub1

execute store result score $tsk.buffType tsk.relicTemp.sub1 run data get entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactSubStat1
execute store result storage tsk:storage loreLevel.sub1.value int 1 run scoreboard players get $tsk.newLevel.sub1 tsk.relicTemp.sub1

execute if score $tsk.buffType tsk.relicTemp.sub1 matches 6 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/flat/sc with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 7 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/flat/def with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 9 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/flat/max_hp with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 11 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/flat/mana_max with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 13 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/flat/mana_regen with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 14 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/flat/strength with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 16 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/flat/crit_dmg with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 10 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/percentage/def with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 15 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/percentage/max_hp with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 17 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/percentage/mana_max with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 18 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/percentage/crit_rate with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 19 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/percentage/mana_regen with storage tsk:storage loreLevel.sub1
execute if score $tsk.buffType tsk.relicTemp.sub1 matches 20 run function tsk:relics/upgrade/modify_stats/lore/upgrade_sub_stats/lvl2/percentage/strength with storage tsk:storage loreLevel.sub1

execute store result storage tsk:storage newLevel.sub1.value int 1 run scoreboard players get $tsk.newLevel.sub1 tsk.relicTemp.sub1



data remove storage tsk:storage newLevel.sub1
data remove storage tsk:storage loreLevel.sub1
scoreboard players reset $tsk.buffType tsk.relicTemp.sub1
scoreboard players reset $tsk.oldLevel tsk.relicTemp.sub1
scoreboard players reset $tsk.newLevel.sub1 tsk.relicTemp.sub1
scoreboard players reset $tsk.randomVal tsk.relicTemp.sub1