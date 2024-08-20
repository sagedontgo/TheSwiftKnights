tag @s add tsk.abilityIsActive.watersight
effect give @s night_vision infinite 1
effect give @s strength infinite 0

team add tsk.temp
team modify tsk.temp color blue
team join tsk.temp
tag @e[distance=..32,type=#aquatic] add tsk.hitBy.watersight
execute as @e[distance=..32,type=#aquatic,tag=tsk.hitBy.watersight] run team join tsk.temp
execute as @e[distance=..32,type=#aquatic,tag=tsk.hitBy.watersight] run effect give @s glowing infinite 1