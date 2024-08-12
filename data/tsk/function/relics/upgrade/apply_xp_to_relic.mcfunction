playsound minecraft:block.anvil.use block @s

$data modify entity @e[type=marker,tag=ajjgui.gui_ported,limit=1,sort=nearest,distance=..2] data.gui.[].[10].components."minecraft:custom_data".tsk.relicXp set value $(value)

execute store result score $tsk.currentXp tsk.relic.xpNeeded run data get entity @e[sort=nearest,limit=1,type=chest_boat,distance=..1] Items.[10].components."minecraft:custom_data".tsk.currentXp
execute store result score $tsk.addedXp tsk.relic.xpNeeded run data get entity @e[sort=nearest,limit=1,type=chest_boat,distance=..1] Items.[10].components."minecraft:custom_data".tsk.relicXp
execute store result score $tsk.neededXp tsk.relic.xpNeeded run data get entity @e[sort=nearest,limit=1,type=chest_boat,distance=..1] Items.[10].components."minecraft:custom_data".tsk.neededXp
execute store result score $tsk.level tsk.relic.level run data get entity @e[sort=nearest,limit=1,type=chest_boat,distance=..1] Items.[10].components."minecraft:custom_data".tsk.level



scoreboard players operation $tsk.currentXp tsk.relic.xpNeeded += $tsk.addedXp tsk.relic.xpNeeded
function tsk:relics/upgrade/reset
function tsk:relics/upgrade/check_xp

# say apply_xp_to_relic
