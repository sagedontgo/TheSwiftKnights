tag @e[sort=nearest,limit=1,type=!#tsk:exclude,distance=0.01..12] add tsk.targetedBy.teardropBlade 
effect give @e[limit=1,tag=tsk.targetedBy.teardropBlade,type=!#tsk:exclude,distance=..12] glowing 5 1 true

# effect give @e[limit=1,tag=tsk.targetedBy.teardropBlade,type=!#tsk:exclude,distance=..12] slowness 5 127 true



tag @s add tsk.castedAbility
tag @s add tsk.castedAbility.teardropBlade
scoreboard players set @s tsk.abilityTimer.teardropBlade 60
scoreboard players set @s tsk.abilityCooldownTimer 60
scoreboard players reset @s tsk.leftClick
