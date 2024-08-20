
execute as @s[y_rotation=-45..45] at @s anchored eyes positioned ^ ^ ^2 anchored feet run function tsk:ability_functions/knight1/riffs/high_tide/raycast/south/start with storage tsk:storage distance
# North
execute as @s[y_rotation=-180..-135] at @s anchored eyes positioned ^ ^ ^2 anchored feet run function tsk:ability_functions/knight1/riffs/high_tide/raycast/north/start with storage tsk:storage distance
execute as @s[y_rotation=135..180] at @s anchored eyes positioned ^ ^ ^2 anchored feet run function tsk:ability_functions/knight1/riffs/high_tide/raycast/north/start with storage tsk:storage distance
# # East
execute as @s[y_rotation=-135..-45] at @s anchored eyes positioned ^ ^ ^2 anchored feet run function tsk:ability_functions/knight1/riffs/high_tide/raycast/east/start with storage tsk:storage distance
# # West
execute as @s[y_rotation=45..135] at @s anchored eyes positioned ^ ^ ^2 anchored feet run function tsk:ability_functions/knight1/riffs/high_tide/raycast/west/start with storage tsk:storage distance
execute if entity @s[y_rotation=-45..45] anchored eyes positioned ~ ~2 ~ run summon item_display ^ ^ ^1 {start_interpolation:20,interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.3f]},item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:custom_model_data":13003}},Tags:["tsk.abilityMarker.highTide","tsk.ability.highTide","tsk.facing.northsouth"],brightness:{block:15,sky:15}}
execute if entity @s[y_rotation=-180..-135] anchored eyes positioned ~ ~2 ~ run summon item_display ^ ^ ^1 {start_interpolation:20,interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.3f]},item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:custom_model_data":13003}},Tags:["tsk.abilityMarker.highTide","tsk.ability.highTide","tsk.facing.northsouth"],brightness:{block:15,sky:15}}
execute if entity @s[y_rotation=135..180] anchored eyes positioned ~ ~2 ~ run summon item_display ^ ^ ^1 {start_interpolation:20,interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.3f]},item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:custom_model_data":13003}},Tags:["tsk.abilityMarker.highTide","tsk.ability.highTide","tsk.facing.northsouth"],brightness:{block:15,sky:15}}
execute if entity @s[y_rotation=-135..-45] anchored eyes positioned ~ ~2 ~ run summon item_display ^ ^ ^1 {start_interpolation:20,interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.5f,0.5f]},item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:custom_model_data":13003}},Tags:["tsk.abilityMarker.highTide","tsk.ability.highTide","tsk.facing.eastwest"],brightness:{block:15,sky:15}}
execute if entity @s[y_rotation=45..135] anchored eyes positioned ~ ~2 ~ run summon item_display ^ ^ ^1 {start_interpolation:20,interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.5f,0.5f]},item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:custom_model_data":13003}},Tags:["tsk.abilityMarker.highTide","tsk.ability.highTide","tsk.facing.eastwest"],brightness:{block:15,sky:15}}

scoreboard players operation $tsk.distance tsk.math = @s tsk.manaMax
scoreboard players operation $tsk.baseDistance tsk.math = $15 tsk.int
scoreboard players operation $tsk.distance tsk.math /= $20 tsk.int
scoreboard players operation $tsk.distance tsk.math *= $10 tsk.int
scoreboard players operation $tsk.distance tsk.math += $tsk.baseDistance tsk.math 
execute store result storage tsk:storage distance.value int 1 run scoreboard players get $tsk.distance tsk.math

scoreboard players reset $tsk.distance tsk.math
scoreboard players reset $tsk.baseDistance tsk.math



tag @s add tsk.castedAbility
tag @s add tsk.castedAbility.highTide
scoreboard players set @s tsk.abilityTimer.highTide 200
scoreboard players set @s tsk.abilityCooldownTimer 260
scoreboard players reset @s tsk.leftClick
