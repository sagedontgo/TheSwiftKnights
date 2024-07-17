execute if entity @s[tag=tsk.reaction.blizzard] run stopsound @a[distance=1..16] player minecraft:item.elytra.flying
data merge entity @s[type=text_display,tag=tsk.reactionIndicator] {start_interpolation:-1,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0.0f,0.0f,0.0f]}}
