tag @s add tsk.quicksand
scoreboard players set @s tsk.reactionTimer.quicksand 100
damage @s 1 generic
scoreboard players remove @s tsk.hp 9

particle splash ~ ~1.3 ~ 2.3 0 2.3 1 145
playsound minecraft:block.mud.place master @a[distance=..16] ~ ~ ~ 10 0

tp @s ~ ~-1.5 ~
effect give @s slowness 4 127 true
attribute @s generic.gravity base set 200

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:mud replace #tsk:replace/quicksand_reaction/into_mud
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:gravel replace #tsk:replace/quicksand_reaction/into_gravel
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:muddy_mangrove_roots replace #tsk:replace/quicksand_reaction/into_muddy_roots
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:netherrack replace #tsk:replace/quicksand_reaction/into_netherrack

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 farmland[moisture=1] replace farmland[moisture=0]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 farmland[moisture=2] replace farmland[moisture=1]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 farmland[moisture=3] replace farmland[moisture=2]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 farmland[moisture=4] replace farmland[moisture=3]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 farmland[moisture=5] replace farmland[moisture=4]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 farmland[moisture=6] replace farmland[moisture=5]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 farmland[moisture=7] replace farmland[moisture=6]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 mud replace farmland[moisture=7]




summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Quicksand","color": "green"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.permafrost]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40

tag @s remove tsk.earth
tag @s remove tsk.water