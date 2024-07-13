## KNIGHT 1
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskRiffAbility:highTide},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/riffs/high_tide
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskRiffAbility:rainyEnding},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/riffs/rainy_ending
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskRiffAbility:tidalWave},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/riffs/tidal_wave
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskShieldAbility:cascade},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/shields/cascade
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskShieldAbility:sanctuary},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/shields/sanctuary
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskShieldAbility:tearsOfResurgence},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/shields/tears_of_resurgence
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskAnthemAbility:valiantSerenade},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/anthems/valiant_serenade
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tskTrickAbility:liquidVeil},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.offhand tsk:grimoires/knight1/trick/liquid_veil



execute as @s at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @s at @s run particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 10 100
execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_data":{tsk:grimoire},"minecraft:max_stack_size":1}}}] run item modify entity @s weapon.mainhand tsk:remove_one