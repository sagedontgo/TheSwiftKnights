tag @s add tsk.dust_storm
scoreboard players set @s tsk.reactionTimer.dust_storm 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 7
effect give @s blindness 5 1 true
playsound minecraft:item.hoe.till block @a[distance=..16] ~ ~ ~ 10 0
particle dust{color:[0.600,0.318,0.102],scale:1} ~ ~ ~ 1.4 2.4 1.4 0 1000 normal
particle dust{color:[0.600,0.600,0.600],scale:2} ~ ~ ~ 1.4 2.4 1.4 0 100 normal
particle gust_emitter_large ~ ~ ~ 0 0 0 1 1
playsound minecraft:item.hoe.till block @a[distance=..16] ~ ~ ~ 10 0
summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Dust Storm","color": "#964B00"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.dust_storm]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40


tag @s remove tsk.air
tag @s remove tsk.earth