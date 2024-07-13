execute store result score @s tsk.regenAmplifier run data get entity @s active_effects[{id:"minecraft:regeneration"}].amplifier
execute store result score @s tsk.regenDuration run data get entity @s active_effects[{id:"minecraft:regeneration"}].duration
tag @s add tsk.hasRegeneration
