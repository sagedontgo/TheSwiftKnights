tag @s add tsk.magma_flow
scoreboard players set @s tsk.reactionTimer.magma_flow 60
damage @s 1 generic
scoreboard players remove @s tsk.hp 9
playsound block.lava.extinguish block @a[distance=..16] ~ ~ ~ 10 2
playsound block.fire.extinguish block @a[distance=..16] ~ ~ ~ 10 0
particle minecraft:lava ~ ~ ~ 2.1 0.5 2.1 2 10

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:magma_block replace #tsk:replace/natural_blocks
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:lava replace obsidian
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:lava replace crying_obsidian
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:lava replace #tsk:replace/fluids
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:iron_block replace minecraft:raw_iron_block
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:copper_block replace minecraft:raw_copper_block
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:gold_block replace minecraft:raw_gold_block
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 campfire[lit=true] replace campfire[lit=false]
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 soul_campfire[lit=true] replace soul_campfire[lit=false]
fill ~3 ~1 ~3 ~-3 ~4 ~-3 minecraft:fire replace minecraft:air

summon item ^0.6 ^1.3 ^ {Motion:[0.1,0.15,0.05],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Magma Flow","color": "red"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.reactionIndicator,tsk.reaction.permafrost]}],Item:{id:"minecraft:stone_button",count:1},Age:5996,PickupDelay:32767}
scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.reactionIndicator] tsk.indicatorTimer 40

tag @s remove tsk.earth
tag @s remove tsk.fire