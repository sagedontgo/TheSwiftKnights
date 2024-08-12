execute store result score $tsk.oldLevel tsk.relicTemp run data get entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactBuffs.main
execute store result score $tsk.randomVal tsk.relicTemp run random value 5..12
scoreboard players operation $tsk.newLevel tsk.relicTemp = $tsk.oldLevel tsk.relicTemp
scoreboard players operation $tsk.newLevel tsk.relicTemp += $tsk.randomVal tsk.relicTemp

execute store result score $tsk.buffType tsk.relicTemp run data get entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.artifactMainStat


execute store result storage tsk:storage loreLevel.value int 1 run scoreboard players get $tsk.newLevel tsk.relicTemp
# Flat Stomach Capacity
execute if score $tsk.buffType tsk.relicTemp matches 6 run function tsk:relics/upgrade/modify_stats/lore/flat/sc with storage tsk:storage loreLevel
# Flat Defense
execute if score $tsk.buffType tsk.relicTemp matches 7 run function tsk:relics/upgrade/modify_stats/lore/flat/def with storage tsk:storage loreLevel
# FLat MAX HP
execute if score $tsk.buffType tsk.relicTemp matches 9 run function tsk:relics/upgrade/modify_stats/lore/flat/max_hp with storage tsk:storage loreLevel
# Flat Maximum Mana
execute if score $tsk.buffType tsk.relicTemp matches 11 run function tsk:relics/upgrade/modify_stats/lore/flat/mana_max with storage tsk:storage loreLevel
# Flat Mana Regen
execute if score $tsk.buffType tsk.relicTemp matches 13 run function tsk:relics/upgrade/modify_stats/lore/flat/mana_regen with storage tsk:storage loreLevel
# Flat Attack Strength
execute if score $tsk.buffType tsk.relicTemp matches 14 run function tsk:relics/upgrade/modify_stats/lore/flat/strength with storage tsk:storage loreLevel
# Critical Damage
execute if score $tsk.buffType tsk.relicTemp matches 16 run function tsk:relics/upgrade/modify_stats/lore/flat/crit_dmg with storage tsk:storage loreLevel

# Def%
execute if score $tsk.buffType tsk.relicTemp matches 10 run function tsk:relics/upgrade/modify_stats/lore/percentage/def with storage tsk:storage loreLevel
# Maximum HP%
execute if score $tsk.buffType tsk.relicTemp matches 15 run function tsk:relics/upgrade/modify_stats/lore/percentage/max_hp with storage tsk:storage loreLevel
# Maximum Mana%
execute if score $tsk.buffType tsk.relicTemp matches 17 run function tsk:relics/upgrade/modify_stats/lore/percentage/mana_max with storage tsk:storage loreLevel
# Crit Rate%
execute if score $tsk.buffType tsk.relicTemp matches 18 run function tsk:relics/upgrade/modify_stats/lore/percentage/crit_rate with storage tsk:storage loreLevel
# Mana Regen%
execute if score $tsk.buffType tsk.relicTemp matches 19 run function tsk:relics/upgrade/modify_stats/lore/percentage/mana_regen with storage tsk:storage loreLevel
# Percentage Attack Strength
execute if score $tsk.buffType tsk.relicTemp matches 20 run function tsk:relics/upgrade/modify_stats/lore/percentage/strength with storage tsk:storage loreLevel

execute store result storage tsk:storage newLevel.value int 1 run scoreboard players get $tsk.newLevel tsk.relicTemp
function tsk:relics/upgrade/modify_stats/macro_functions/main_stat with storage tsk:storage newLevel
function tsk:relics/upgrade/modify_stats/macro_functions/set_level with storage tsk:storage level



data remove storage tsk:storage newLevel
data remove storage tsk:storage loreLevel
scoreboard players reset $tsk.buffType tsk.relicTemp
scoreboard players reset $tsk.oldLevel tsk.relicTemp
scoreboard players reset $tsk.newLevel tsk.relicTemp
scoreboard players reset $tsk.randomVal tsk.relicTemp