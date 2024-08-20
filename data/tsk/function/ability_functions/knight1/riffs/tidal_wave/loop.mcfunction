scoreboard players remove @s tsk.abilityTimer.tidalWave 1

execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 60 run function tsk:ability_functions/knight1/riffs/tidal_wave/damage with storage tsk:storage abilityDamage
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 59 run playsound minecraft:entity.parrot.imitate.drowned master @a[distance=..15] ~ ~ ~ 10 2
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 58 run particle minecraft:bubble_pop ~ ~ ~ 0.912 2 0.912 0 210
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 40 run function tsk:ability_functions/knight1/riffs/tidal_wave/damage with storage tsk:storage abilityDamage
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 39 run playsound minecraft:entity.parrot.imitate.drowned master @a[distance=..15] ~ ~ ~ 10 2
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 38 run particle minecraft:bubble_pop ~ ~ ~ 0.912 2 0.912 0 210
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 20 run function tsk:ability_functions/knight1/riffs/tidal_wave/damage with storage tsk:storage abilityDamage
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 19 run playsound minecraft:entity.parrot.imitate.drowned master @a[distance=..15] ~ ~ ~ 10 2
execute if score @s[tag=tsk.hitBy.tidalWave] tsk.abilityTimer.tidalWave matches 18 run particle minecraft:bubble_pop ~ ~ ~ 0.912 2 0.912 0 210


execute if score @s tsk.abilityTimer.tidalWave matches ..3 run data remove storage tsk:storage abilityDamage
execute if score @s tsk.abilityTimer.tidalWave matches ..2 run tag @s remove tsk.hitBy.tidalWave
execute if score @s tsk.abilityTimer.tidalWave matches ..1 run tag @s remove tsk.castedAbility.tidalWave