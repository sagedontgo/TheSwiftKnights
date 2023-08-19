# Tag player
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{wand:1b}}}] run tag @s add tsk.holdingWand
execute as @a[tag=tsk.holdingWand,nbt=!{SelectedItem:{id:"minecraft:stick",tag:{wand:1b}}}] run tag @s remove tsk.holdingWand
# Summon, teleport, and despawn Interaction entities
execute as @a[tag=tsk.holdingWand,tag=!tsk.summonedInteraction] at @s run summon interaction ~ ~ ~ {Tags:["tsk.interaction"],response:1b,width:0.4,height:1.25} 
execute as @a[tag=tsk.holdingWand,tag=!tsk.summonedInteraction] run tag @s add tsk.summonedInteraction
execute as @a[tag=tsk.holdingWand] at @s anchored eyes run tp @e[sort=nearest,limit=1,type=interaction,tag=tsk.interaction] ~ ~.5 ~
execute as @e[type=interaction,tag=tsk.interaction] at @s unless entity @p[tag=tsk.holdingWand,distance=..1] run kill @s
execute as @a[tag=tsk.summonedInteraction,tag=!tsk.holdingWand] run tag @s remove tsk.summonedInteraction