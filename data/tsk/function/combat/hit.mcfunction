execute store result storage tsk:attribute attribute.value int 1 run scoreboard players get @s tsk.str
function tsk:strength/modify_attribute with storage tsk:attribute attribute
execute as @s run function tsk:crit/chance



scoreboard players add @s tsk.hitCount 1
execute if entity @s[tag=tsk.rolledCrit,scores={tsk.hitCount=2..}] run function tsk:crit/reset
execute if entity @s[tag=tsk.rolledCrit,scores={tsk.hitCount=3..}] run tag @s remove tsk.rolledCrit

execute if score @s tsk.hitCount matches 1 run attribute @s minecraft:player.entity_interaction_range base set 5
execute if score @s tsk.hitCount matches 3 run tag @s add tsk.dashReady
execute if score @s tsk.hitCount matches 5 run function tsk:combat/jump
execute if score @s tsk.hitCount matches 6.. run function tsk:combat/reset

advancement revoke @s only tsk:combat/entity_hit