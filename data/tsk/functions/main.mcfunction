# Tag player
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{wand:1b}}}] run tag @s add tsk.holdingWand
execute as @a[tag=tsk.holdingWand,nbt=!{SelectedItem:{id:"minecraft:stick",tag:{wand:1b}}}] run tag @s remove tsk.holdingWand
# Summon, teleport, and despawn Interaction entities
execute as @a[tag=tsk.holdingWand,tag=!tsk.summonedInteraction] at @s run summon interaction ~ ~ ~ {Tags:["tsk.interaction"],response:1b,width:0.4,height:1.25} 
execute as @a[tag=tsk.holdingWand,tag=!tsk.summonedInteraction] run tag @s add tsk.summonedInteraction
execute as @a[tag=tsk.holdingWand] at @s anchored eyes run tp @e[sort=nearest,limit=1,type=interaction,tag=tsk.interaction] ~ ~.5 ~
execute as @e[type=interaction,tag=tsk.interaction] at @s unless entity @p[tag=tsk.holdingWand,distance=..1] run kill @s
execute as @a[tag=tsk.summonedInteraction,tag=!tsk.holdingWand] run tag @s remove tsk.summonedInteraction


# Actionbar (temporary until I add the stat bar) + trigger and actionbar switch handling
title @a[tag=!tsk.actionbarSwitch,tag=!tsk.actionbarToggled] actionbar {"text":"Actionbar!"}
execute as @a[tag=!tsk.actionbarSwitch,scores={tsk.actionbarSwitch=1..}] run tag @s add tsk.actionbarSwitch
execute as @a[tag=tsk.actionbarSwitch,scores={tsk.actionbarSwitch=1..}] run scoreboard players remove @s tsk.actionbarSwitch 1
execute as @a[tag=tsk.actionbarSwitch,scores={tsk.actionbarSwitch=..0}] run function tsk:actionbar_switch

scoreboard players enable @a tsk.actionbarToggle
execute as @a[tag=!tsk.actionbarToggled,scores={tsk.actionbarToggle=1..}] at @s run function tsk:toggles/actionbar_toggle_off
execute as @a[tag=tsk.actionbarToggled,scores={tsk.actionbarToggle=..0}] at @s run function tsk:toggles/actionbar_toggle_on

execute as @a[scores={tsk.leftClick=1..,tsk.leftClick.timer=1..}] run scoreboard players remove @s tsk.leftClick.timer 1
execute as @a[scores={tsk.leftClick=1..,tsk.leftClick.timer=..1}] run function tsk:left_click_reset
execute as @a[scores={tsk.rightClick=1..,tsk.rightClick.timer=..1}] run function tsk:right_click_reset

# The Taylor Swift Knight (namespace: debut_knight)
execute as @a[tag=knight1,scores={tsk.leftClick=3..}] at @s run function tsk:debut_knight/primary_attack
execute as @a[tag=knight1,scores={tsk.leftClick=2,tsk.rightClick=1}] at @s run function tsk:debut_knight/secondary_attack
execute as @a[tag=knight1,scores={tsk.rightClick=3..}] at @s run function tsk:debut_knight/primary_defense
execute as @a[tag=knight1,scores={tsk.rightClick=2,tsk.leftClick=1}] at @s run function tsk:debut_knight/secondary_defense
execute as @a[tag=knight1,predicate=tsk:sneaking,scores={tsk.leftClick=1..}] at @s run function tsk:debut_knight/ultimate