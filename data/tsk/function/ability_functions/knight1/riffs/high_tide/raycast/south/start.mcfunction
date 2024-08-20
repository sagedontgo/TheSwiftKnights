summon armor_stand ~ ~ ~ {Passengers:[{id:"marker",Tags:["tsk.tpAnchor.highTide","tsk.ability.highTide"]}],Tags:["tsk.rayMarker.highTide","tsk.ability.highTide","tsk.facingSouth"],Invisible:1b,Silent:1b}

tp @e[tag=tsk.rayMarker.highTide] ~ ~ ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=tsk.rayMarker.highTide] run summon minecraft:armor_stand ^4 ^ ^ {Tags:["tsk.detector.highTide","tsk.facingSouth","tsk.ability.highTide"],Invisible:1b,Silent:1b}
$scoreboard players set @e[tag=tsk.rayMarker.highTide] tsk.raySteps $(value)
scoreboard players set @e[tag=tsk.rayMarker.highTide] tsk.rayClock 40
scoreboard players set @e[tag=tsk.rayMarker.highTide] tsk.raySuccess 0
scoreboard players set @e[tag=tsk.detector.highTide] tsk.abilityTimer.highTide 120

data remove storage tsk:storage distance


execute as @e[tag=tsk.rayMarker.highTide] at @s run function tsk:ability_functions/knight1/riffs/high_tide/raycast/south/ray