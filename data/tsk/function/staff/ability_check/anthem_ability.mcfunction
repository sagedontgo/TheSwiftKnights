execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskAnthemAbility:whirlpool}}}}] run function tsk:knights/knight1/anthems/whirlpool






execute as @s at @s if entity @s[tag=tsk.knight1,nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff,tskAnthemAbility:none}}}}] run function tsk:knights/fallback/no_anthem_ability