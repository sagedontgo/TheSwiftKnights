playsound minecraft:item.elytra.flying player @a[distance=..16] ~ ~ ~ 10 2
tag @s add tsk.blizzard
effect give @s slowness 3 127 true
damage @s 1 generic
scoreboard players remove @s tsk.hp 10
scoreboard players set @s tsk.reactionTimer.blizzard 60
particle snowflake ~ ~3 ~ 1.2 3 1.2 0 400
particle dust{color:[0.600,0.600,0.600],scale:2} ~ ~8 ~ 1.3 0.5 1.3 1 600 normal
fill ~-3 ~ ~-3 ~3 ~ ~3 snow keep
fill ~-3 ~-2 ~-3 ~3 ~2 ~3 ice replace water

summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Blizzard","color": "aqua"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.blizzard]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}

scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40


tag @s remove tsk.air
tag @s remove tsk.ice