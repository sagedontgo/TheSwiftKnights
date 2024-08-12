gamemode spectator @s
tag @s add tsk.died
scoreboard players set @s tsk.hp 000
summon marker ~ ~ ~ {Tags:["tsk.resMarker"]}
scoreboard players set @s tsk.resRoll.animationTimer 60
execute store result score $random tsk.randomVal run random value 0..32
