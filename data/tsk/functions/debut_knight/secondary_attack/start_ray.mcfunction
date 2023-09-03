
execute anchored eyes run summon area_effect_cloud ~ ~1 ~ {Tags:["tsk.icefrozenground.ray"]}
tp @e[tag=tsk.icefrozenground.ray] ~ ~1.5 ~ ~ ~
scoreboard players set @e[tag=tsk.icefrozenground.ray] tsk.raySteps 150
scoreboard players set @e[tag=tsk.icefrozenground.ray] tsk.raySuccess 0
execute as @e[tag=tsk.icefrozenground.ray] at @s run function tsk:debut_knight/secondary_attack/ray