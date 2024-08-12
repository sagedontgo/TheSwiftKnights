effect clear @s strength
effect clear @s night_vision

team remove tsk.temp
execute as @e[tag=tsk.hitBy.watersight] run team leave tsk.temp
execute as @e[tag=tsk.hitBy.watersight] run effect clear @s glowing
execute as @e[tag=tsk.hitBy.watersight] run tag @s remove tsk.hitBy.watersight

tag @s remove tsk.abilityIsActive.watersight