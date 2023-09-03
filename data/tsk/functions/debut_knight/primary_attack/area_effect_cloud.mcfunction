
execute as @e[distance=..23] at @s unless score @s tsk.id = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=knight1_ability1] tsk.id run effect give @s wither 2 2 false
execute as @e[distance=..23] at @s unless score @s tsk.id = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=knight1_ability1] tsk.id run effect give @s slowness 2 2 false
execute as @e[distance=..23] at @s unless score @s tsk.id = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=knight1_ability1] tsk.id run effect give @s blindness 2 2 false
execute as @e[distance=..23] at @s if score @s tsk.id = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=knight1_ability1] tsk.id run effect give @s speed 2 2 false