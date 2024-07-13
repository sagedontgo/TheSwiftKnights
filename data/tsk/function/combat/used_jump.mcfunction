summon arrow ~ ~ ~ {damage:0,Motion:[0.0,-1.0,0.0],Tags:[tsk.blockDetector]}
data modify storage tsk:block_name block_state set from entity @e[sort=nearest,limit=1,type=arrow,tag=tsk.blockDetector] inBlockState.Name
function tsk:combat/used_jump with storage tsk:block_name block_state
kill @e[type=arrow,sort=nearest,limit=1,tag=tsk.blockDetector]


attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
attribute @s minecraft:generic.gravity base set 0.08
scoreboard players add @s tsk.hp 1
tag @s remove tsk.jumped
