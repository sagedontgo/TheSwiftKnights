scoreboard players operation @s tsk.preCalDamageTaken /= $10 tsk.int
execute if entity @s[scores={tsk.def=1..}] run scoreboard players operation @s tsk.tempDef = @s tsk.def 
execute as @s if entity @s[scores={tsk.def=1..}] run scoreboard players add @s tsk.tempDef 100
execute as @s if entity @s[scores={tsk.def=1..}] run scoreboard players operation @s tsk.preCalDamageTaken *= $1000 tsk.int
execute as @s if entity @s[scores={tsk.def=1..}] run scoreboard players operation @s tsk.preCalDamageTaken /= @s tsk.tempDef
execute as @s if entity @s[scores={tsk.def=1..}] run scoreboard players operation @s tsk.preCalDamageTaken /= $10 tsk.int
scoreboard players operation @s tsk.damageTaken = @s tsk.preCalDamageTaken


scoreboard players operation @s tsk.hp -= @s tsk.damageTaken

scoreboard players reset @s tsk.preCalDamageTaken
scoreboard players reset @s tsk.damageTaken
scoreboard players reset @s tsk.tempDef





