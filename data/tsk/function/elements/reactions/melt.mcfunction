tag @s add tsk.melt
scoreboard players set @s tsk.reactionTimer.melt 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 9

particle minecraft:cloud ~ ~1 ~ 0.8 1.8 0.8 0 25
particle minecraft:small_gust ~ ~1 ~ 0.9 0.6 0.9 0 100
particle minecraft:lava ~ ~ ~ 0.3 0.5 0.3 0.05 10 force
particle minecraft:snowflake ~ ~2 ~ 0.3 0.5 0.3 0.05 10 force
playsound minecraft:block.lava.extinguish block @a[distance=..16] ~ ~ ~ 10 2

summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Melt","color": "red"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.permafrost]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40


tag @s remove tsk.ice
tag @s remove tsk.fire