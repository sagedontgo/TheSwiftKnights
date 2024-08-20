playsound minecraft:entity.parrot.imitate.drowned master @a[distance=..15] ~ ~ ~ 10 2
tag @s add tsk.hitBy.tidalWave 
tag @s add tsk.water
effect give @s glowing 4 1 true



scoreboard players set @s tsk.abilityTimer.tidalWave 60
scoreboard players set #hit tsk.castTemp 1

