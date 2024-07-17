tag @s add tsk.storm
scoreboard players set @s tsk.reactionTimer.storm 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 5
effect give @s slowness 3 127 true
particle dust{color:[0.522,0.522,0.522],scale:2} ~ ~4 ~ 1.3 0.5 1.3 1 600 normal
particle dripping_water ~ ~4 ~ 1.3 0.8 1.3 1 600 normal
particle wax_off ~ ~ ~ 0.2 3 0.2 1 140 normal
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..16] ~ ~ ~ 10 2
playsound minecraft:entity.boat.paddle_water neutral @a[distance=..16] ~ ~ ~ 100 0.4

summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Storm","color": "blue"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.storm]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40

tag @s remove tsk.air
tag @s remove tsk.water