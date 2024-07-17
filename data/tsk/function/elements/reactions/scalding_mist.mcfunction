tag @s add tsk.scalding_mist
scoreboard players set @s tsk.reactionTimer.scalding_mist 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 10

particle minecraft:white_smoke ~ ~ ~ 0.5 1 0.5 0.01 155
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 1 0.3 0.1 10
particle cloud ~ ~1 ~ 0 2 0 0.1 54

playsound entity.generic.extinguish_fire player @a[distance=..16] ~ ~ ~ 10 0.2

summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Scalding Mist","color": "red"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.storm]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40

tag @s remove tsk.fire
tag @s remove tsk.water