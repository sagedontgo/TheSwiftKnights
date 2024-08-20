playsound minecraft:entity.zombie.converted_to_drowned player @a[distance=..15] ~ ~ ~ 1.0 1.0
playsound minecraft:entity.player.splash player @a[distance=..15] ~ ~ ~ 1.0 1.0
playsound minecraft:entity.dolphin.swim player @a[distance=..15] ~ ~ ~ 0.8 1.2
playsound minecraft:block.water.ambient player @a[distance=..15] ~ ~ ~ 0.5 1.0
playsound minecraft:entity.ender_dragon.flap player @a[distance=..15] ~ ~ ~ 0.4 0.6
execute as @s at @s anchored eyes positioned ^ ^ ^2 anchored feet run function tsk:ability_functions/knight1/riffs/tidal_wave/raycast/start

scoreboard players operation $tsk.temp.hp tsk.math = @s tsk.hp
scoreboard players operation $tsk.base tsk.math = $12 tsk.int
scoreboard players remove $tsk.temp.hp tsk.math 50
scoreboard players operation $tsk.temp.hp tsk.math /= $10 tsk.int
scoreboard players operation $tsk.temp.hp tsk.math += $tsk.base tsk.math
scoreboard players operation @s tsk.abilityDamage = $tsk.temp.hp tsk.math
execute store result storage tsk:storage abilityDamage.value int 1 run scoreboard players get @s tsk.abilityDamage

scoreboard players reset $tsk.temp.hp tsk.math
scoreboard players reset $tsk.base tsk.math
scoreboard players reset @s tsk.abilityDamage


tag @s add tsk.castedAbility
tag @s add tsk.castedAbility.tidalWave
scoreboard players set @s tsk.abilityTimer.tidalWave 60
scoreboard players set @s tsk.abilityCooldownTimer 60
scoreboard players reset @s tsk.leftClick
