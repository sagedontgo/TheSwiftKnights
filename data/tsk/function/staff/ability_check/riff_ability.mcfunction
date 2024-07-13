execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskRiffAbility:tidalWave}}}}] run function tsk:knights/knight1/riffs/tidal_wave
execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskRiffAbility:highTide}}}}] run function tsk:knights/knight1/riffs/high_tide
execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskRiffAbility:rainyEnding}}}}] run function tsk:knights/knight1/riffs/rainy_ending










execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskRiffAbility:none}}}}] run function tsk:knights/fallback/no_riff_ability