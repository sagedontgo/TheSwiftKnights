
tp @e[sort=nearest,limit=1,type=item_display,tag=tsk.abilityMarker.highTide] @s
execute unless score @s tsk.rayClock matches 9.. run particle cloud ~ ~ ~ 2.5 0.3 0 0.0 100
execute unless score @s tsk.rayClock matches 9.. positioned ~ ~3 ~ run particle minecraft:splash ~ ~ ~ 2.5 7.5 0.5 0.01 50 force
execute unless score @s tsk.rayClock matches 9.. positioned ~ ~3 ~ run particle minecraft:bubble ~ ~ ~ 2.5 7.5 0.5 0.01 30 force
execute unless score @s tsk.rayClock matches 9.. positioned ~ ~3 ~ run particle minecraft:falling_water ~ ~ ~ 2.5 7.5 0.5 0.01 15 force

scoreboard players set @e[sort=nearest,limit=1,type=item_display,tag=tsk.abilityMarker.highTide] tsk.abilityTimer.highTide 100
scoreboard players set @e[tag=tsk.rayMarker.highTide] tsk.abilityTimer.highTide 100
scoreboard players set @e[tag=tsk.detector.highTide] tsk.abilityTimer.highTide 120
scoreboard players set @e[tag=tsk.tpAnchor.highTide] tsk.abilityTimer.highTide 10

playsound minecraft:entity.player.splash ambient @a[distance=..16] ~ ~ ~ 0.3 0.8 1
playsound minecraft:weather.rain ambient @a[distance=..16] ~ ~ ~ 1 1 1
execute positioned ^-4 ^ ^ run tp @e[sort=nearest,type=armor_stand,tag=tsk.detector.highTide,limit=1] ~ ~ ~
scoreboard players remove @s tsk.raySteps 1
scoreboard players remove @s tsk.rayClock 1
execute if score @s tsk.rayClock matches 20 as @e[type=item_display,tag=tsk.abilityMarker.highTide,tag=tsk.facing.northsouth] run data merge entity @s {start_interpolation:-1,interpolation_duration:10,transformation:{scale:[10f,0.5f,0.3f]}}
execute if score @s tsk.rayClock matches 10 as @e[type=item_display,tag=tsk.abilityMarker.highTide,tag=tsk.facing.northsouth] run data merge entity @s {start_interpolation:-1,interpolation_duration:10,transformation:{scale:[10f,19f,0.3f],translation:[0.0,9.0,0.0]}}


execute if block ~ ~-1 ~ #tsk:air run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ #tsk:air run tp @s ^ ^ ^0.5
