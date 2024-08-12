## KNIGHT 1
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:{item:"grimoire",riffAbility:"tidalWave"}},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/riffs/tidal_wave



execute as @s at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @s at @s run particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 10 100
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:{item:"grimoire"}},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.mainhand tsk:remove_one