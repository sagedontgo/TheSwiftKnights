tag @s add tsk.permafrost
scoreboard players set @s tsk.reactionTimer.permafrost 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 9
playsound minecraft:entity.player.hurt_freeze block @a[distance=..16] ~ ~ ~ 10 0.7
particle snowflake ~ ~ ~ 2.3 3 2.3 0.1 125
summon area_effect_cloud ~ ~ ~ {Radius:5f,Duration:100,potion_contents:{custom_color:8553090,custom_effects:[{id:"minecraft:slowness",amplifier:6,duration:20,show_particles:1b,show_icon:1b}]}}

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:snow_block replace #tsk:replace/natural_blocks
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:blue_ice replace #tsk:replace/fluids
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:obsidian replace lava
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 campfire[lit=false] replace campfire[lit=true]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 soul_campfire[lit=false] replace soul_campfire[lit=true]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 snow replace fire

summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Permafrost","color": "blue"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.permafrost]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40

tag @s remove tsk.earth
tag @s remove tsk.ice