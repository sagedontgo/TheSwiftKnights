execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskTrickAbility:liquidVeil}}}}] run function tsk:knights/knight1/tricks/liquid_veil









execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskTrickAbility:none}}}}] run function tsk:knights/fallback/no_trick_ability