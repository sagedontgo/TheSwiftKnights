execute as @e[sort=nearest,limit=1,type=marker,tag=tsk.camera] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=armor_stand,tag=tsk.harmoniaModel]
execute as @e[sort=nearest,limit=1,type=marker,tag=tsk.particleMarker] at @s run tp @s ^0.3 ^ ^ facing entity @e[sort=nearest,limit=1,type=armor_stand]
execute as @e[sort=nearest,limit=1,type=marker,tag=tsk.particleMarker] at @s run particle rain ~ ~ ~ 0 0 0 0 9
execute as @e[sort=nearest,type=marker,tag=tsk.particleMarker.bubble] at @s run function tsk:ability_functions/knight1/high_tide/bubble_particles

execute at @s run particle cloud ~ ~ ~ 0 0 0 0 25
scoreboard players remove @s tsk.animationFrames 1

execute if score @s tsk.animationFrames matches 63..65 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13002}}]}
execute if score @s tsk.animationFrames matches 61..63 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13003}}]}
execute if score @s tsk.animationFrames matches 58..59 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13004}}]}

execute if score @s tsk.animationFrames matches 59..60 at @s run data merge entity @s {NoGravity:1b}
execute if score @s tsk.animationFrames matches 57..58 at @s run tp @e[sort=nearest,limit=1,type=marker,tag=tsk.particleMarker] ^ ^1.3 ^0.3
execute if score @s tsk.animationFrames matches 56..57 at @s run summon text_display ^-0.4 ^ ^-8 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,20f,20f]},billboard:"center",alignment:"center",text:'[{"text":"\\uEF0B"}]',Tags:[tsk.animationTextDisplay],background:0}
execute if score @s tsk.animationFrames matches 49..50 at @s run summon marker ^ ^0.3 ^1 {Tags:[tsk.particleMarker.bubble],NoGravity:1b}
execute if score @s tsk.animationFrames matches 44..45 at @s run summon marker ^ ^0.3 ^-1 {Tags:[tsk.particleMarker.bubble],NoGravity:1b}
execute if score @s tsk.animationFrames matches 39..40 at @s run summon marker ^1 ^0.3 ^ {Tags:[tsk.particleMarker.bubble],NoGravity:1b}
execute if score @s tsk.animationFrames matches 34..35 at @s run summon marker ^-1 ^0.3 ^ {Tags:[tsk.particleMarker.bubble],NoGravity:1b}
execute if score @s tsk.animationFrames matches 28..29 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13005}}]}
execute if score @s tsk.animationFrames matches 27..28 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13006}}]}
execute if score @s tsk.animationFrames matches 26..27 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13007}}]}
execute if score @s tsk.animationFrames matches 25..26 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13008}}]}
execute if score @s tsk.animationFrames matches 24..25 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13009}}]}
execute if score @s tsk.animationFrames matches 23..24 run data merge entity @s {ArmorItems:[{},{},{},{id:"trial_key",components:{custom_model_data:13010}}]}
execute if score @s tsk.animationFrames matches 22..23 at @s run particle minecraft:electric_spark ^ ^1.1 ^0.8 0 0 0 0.3 25
execute if score @s tsk.animationFrames matches 21..22 at @s run particle minecraft:splash ^ ^1.1 ^0.8 0 0 0 0.3 250
execute if score @s tsk.animationFrames matches 9 at @s run execute as @p[tag=tsk.animationIsPlaying.harmoniaUlt1] at @s run function tsk:ability_functions/knight1/whirlpool/start
execute if score @s tsk.animationFrames matches ..9 at @s run scoreboard players set @p[tag=tsk.animationIsPlaying.harmoniaUlt1] tsk.animationPlayingTimer 0
