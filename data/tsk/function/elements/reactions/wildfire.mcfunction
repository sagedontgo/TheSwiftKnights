tag @s add tsk.wildfire
scoreboard players set @s tsk.reactionTimer.wildfire 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 8

summon armor_stand ^ ^ ^1 {Tags:["tsk.reactionEntity.wildfire","tsk.reactionEntity.wildfire_move"],Passengers:[{id:"minecraft:armor_stand",Tags:["tsk.reactionEntity.wildfire","tsk.reactionEntity.wildfire_rotate"],Invisible:1b}]}
execute as @e[type=minecraft:armor_stand,tag=tsk.reactionEntity.wildfire] at @s run tp @s ~ ~ ~ facing entity @n[distance=0.1..3,type=!#tsk:exclude,type=!armor_stand] feet
scoreboard players set @e[tag=tsk.reactionEntity.wildfire,type=armor_stand] tsk.reactionTimer.wildfire 15

setblock ~ ~ ~ fire
fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:fire replace #tsk:air
playsound minecraft:item.firecharge.use master @a[distance=..16] ~ ~ ~ 100 0.4
particle flame ~ ~2 ~ 1 0 3 2 100 normal
particle dust{color:[0.522,0.522,0.522],scale:1} ~ ~2 ~ 1 0.3 3 1 100 normal


summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Wildfire","color": "red"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.wildfire]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40

tag @s remove tsk.air
tag @s remove tsk.fire