particle block{block_state:"minecraft:redstone_block"} ~ ~0.6 ~ 0 0 0 0 10 normal
execute if score @s tsk.bleedingTimer matches 40 run damage @s 3 fall
execute if score @s tsk.bleedingTimer matches 20 run damage @s 3 fall
execute if score @s tsk.bleedingTimer matches 5 run attribute @s generic.jump_strength base set 0.41999998688697815 
scoreboard players remove @s tsk.bleedingTimer 1
execute if score @s tsk.bleedingTimer matches ..1 run tag @s remove tsk.isBleeding