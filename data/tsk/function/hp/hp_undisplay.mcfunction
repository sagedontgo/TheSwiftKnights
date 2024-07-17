execute at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign
data modify entity @s CustomName set from block ~ ~ ~ front_text.messages[0]
data merge entity @s {CustomNameVisible:0b}
execute at @s if block ~ ~ ~ oak_sign run setblock ~ ~ ~ air

scoreboard players reset @s tsk.healthDisplayTimer
tag @s remove tsk.hitMe
tag @s remove tsk.hurtTime