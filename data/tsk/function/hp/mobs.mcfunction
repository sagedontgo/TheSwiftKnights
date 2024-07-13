
execute as @s if entity @s[type=#tsk:15hp] run scoreboard players set @s tsk.hp 15
execute as @s if entity @s[type=#tsk:25hp] run scoreboard players set @s tsk.hp 25
execute as @s if entity @s[type=#tsk:75hp] run scoreboard players set @s tsk.hp 75
execute as @s if entity @s[type=#tsk:100hp] run scoreboard players set @s tsk.hp 100
execute as @s if entity @s[type=#tsk:120hp] run scoreboard players set @s tsk.hp 120
execute as @s if entity @s[type=#tsk:250hp] run scoreboard players set @s tsk.hp 250
execute as @s if entity @s[type=#tsk:1024hp] run scoreboard players set @s tsk.hp 1024

effect give @s health_boost infinite 100 true
execute as @s if entity @s[type=#tsk:living] run effect give @s instant_health infinite 100 true
execute as @s if entity @s[type=#tsk:undead] run effect give @s instant_damage infinite 100 true

say tsk:hp/mobs
tag @s add tsk.healed 
