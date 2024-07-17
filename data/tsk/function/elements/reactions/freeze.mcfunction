tag @s add tsk.freeze
scoreboard players set @s tsk.reactionTimer.freeze 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 8
effect give @s slowness 3 127 true
attribute @s generic.gravity base set 10

playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 10 0
playsound minecraft:entity.player.hurt_freeze block @a[distance=..16] ~ ~ ~ 10 0.7

particle block{block_state:{Name:"blue_ice"}} ~ ~2 ~ 0.8 1 0.8 0 100

summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Freeze","color": "blue"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.freeze]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40

tag @s remove tsk.ice
tag @s remove tsk.water