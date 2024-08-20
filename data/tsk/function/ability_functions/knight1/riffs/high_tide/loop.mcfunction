scoreboard players remove @s tsk.abilityTimer.highTide 1
tag @s[tag=tsk.hitBy.highTide] add tsk.water
scoreboard players set @s[tag=tsk.hitBy.highTide] tsk.elementTimer.water 100
execute if entity @s[tag=tsk.detector.highTide,tag=tsk.facingNorth] as @e[tag=!tsk.detector.highTide,tag=!tsk.rayMarker.highTide,tag=!tsk.castedAbility.highTide,type=!#tsk:exclude,dx=-10,dy=11,dz=0] at @s run tag @s add tsk.hitBy.highTide
execute if entity @s[tag=tsk.detector.highTide,tag=tsk.facingSouth] as @e[tag=!tsk.detector.highTide,tag=!tsk.rayMarker.highTide,tag=!tsk.castedAbility.highTide,type=!#tsk:exclude,dx=10,dy=11,dz=0] at @s run tag @s add tsk.hitBy.highTide
execute if entity @s[tag=tsk.detector.highTide,tag=tsk.facingEast] as @e[tag=!tsk.detector.highTide,tag=!tsk.rayMarker.highTide,tag=!tsk.castedAbility.highTide,type=!#tsk:exclude,dx=0,dy=11,dz=-10] at @s run tag @s add tsk.hitBy.highTide
execute if entity @s[tag=tsk.detector.highTide,tag=tsk.facingWest] as @e[tag=!tsk.detector.highTide,tag=!tsk.rayMarker.highTide,tag=!tsk.castedAbility.highTide,type=!#tsk:exclude,dx=0,dy=11,dz=10] at @s run tag @s add tsk.hitBy.highTide

execute if entity @s[tag=tsk.hitBy.highTide,type=#tsk:all,type=!player] if score @s tsk.abilityTimer.highTide matches 60 run function tsk:ability_functions/knight1/riffs/high_tide/mob_damage
execute if entity @s[tag=tsk.hitBy.highTide,type=player] if score @s tsk.abilityTimer.highTide matches 60 run damage @s 5 tsk:knight1/tidal_wave by @p[tag=tsk.castedAbility.highTide] from @p[tag=tsk.castedAbility.highTide]
execute if entity @s[tag=tsk.hitBy.highTide,type=#tsk:all,type=!player] if score @s tsk.abilityTimer.highTide matches 40 run function tsk:ability_functions/knight1/riffs/high_tide/mob_damage
execute if entity @s[tag=tsk.hitBy.highTide,type=player] if score @s tsk.abilityTimer.highTide matches 40 run damage @s 5 tsk:knight1/tidal_wave by @p[tag=tsk.castedAbility.highTide] from @p[tag=tsk.castedAbility.highTide]
execute if entity @s[tag=tsk.hitBy.highTide,type=#tsk:all,type=!player] if score @s tsk.abilityTimer.highTide matches 20 run function tsk:ability_functions/knight1/riffs/high_tide/mob_damage
execute if entity @s[tag=tsk.hitBy.highTide,type=player] if score @s tsk.abilityTimer.highTide matches 20 run damage @s 5 tsk:knight1/tidal_wave by @p[tag=tsk.castedAbility.highTide] from @p[tag=tsk.castedAbility.highTide]

execute if entity @s[tag=tsk.hitBy.highTide] run function tsk:ability_functions/knight1/riffs/high_tide/hit_entity

execute if score @s[tag=tsk.hitBy.highTide] tsk.abilityTimer.highTide matches ..1 run tag @s remove tsk.hitBy.highTide
execute if score @s[tag=tsk.rayMarker.highTide] tsk.raySteps matches ..1 run kill @s
execute if score @s[tag=tsk.tpAnchor.highTide] tsk.abilityTimer.highTide matches ..1 run kill @s
execute if score @s[tag=tsk.detector.highTide] tsk.abilityTimer.highTide matches ..1 run kill @s
execute if score @s[tag=tsk.abilityMarker.highTide] tsk.abilityTimer.highTide matches ..1 run kill @s
execute if score @s[tag=tsk.abilityMarker.highTide] tsk.abilityTimer.highTide matches 20 run data merge entity @s {start_interpolation:-1,interpolation_duration:40,transformation:{translation:[0.0f,-20f,0.0f]}}
execute if score @s tsk.abilityTimer.highTide matches ..1 run tag @s remove tsk.castedAbility.highTide
