execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:stick",Slot:-106b,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff}}}]}] run function tsk:staff/grimoires/apply
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:stick",Slot:-106b,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{tsk:staff}}}]}] run tellraw @s {"translate":"tsk.text.staff.cannot_learn","color": "gray"}

execute as @e[sort=nearest,limit=1,type=interaction,tag=tsk.grimoireInteraction] run data remove entity @s interaction

