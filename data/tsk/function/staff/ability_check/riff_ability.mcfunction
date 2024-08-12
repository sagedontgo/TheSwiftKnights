execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:{item:"staff",riffAbility:"tidalWave"}}}}},scores={tsk.mana=40..}] run function tsk:knights/knight1/riffs/tidal_wave










# execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskRiffAbility:none}}}}] run function tsk:knights/fallback/no_riff_ability