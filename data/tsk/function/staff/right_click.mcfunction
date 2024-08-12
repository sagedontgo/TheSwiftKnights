advancement revoke @s only tsk:staff/right_click

execute unless entity @s[tag=tsk.castedAbility] run summon item ^ ^1 ^1 {Motion:[0.0,0.3,0.0],Passengers:[{id:"minecraft:text_display",billboard:center,text:'[{"text":"Right Click","color": "green"}]', background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[tsk.clickIndicator]}],Item:{id:"minecraft:stone_button",count:1},Age:5997,PickupDelay:32767}

execute unless entity @s[tag=tsk.castedAbility] if score @s tsk.clickCount matches 1 run playsound minecraft:block.enchantment_table.use block @s ~ ~ ~ 10 1
execute unless entity @s[tag=tsk.castedAbility] if score @s tsk.clickCount matches 2 run playsound minecraft:block.enchantment_table.use block @s ~ ~ ~ 10 1.4
execute unless entity @s[tag=tsk.castedAbility] if score @s tsk.clickCount matches 3.. run playsound minecraft:block.enchantment_table.use block @s ~ ~ ~ 10 1.7

execute unless entity @s[tag=tsk.castedAbility] run scoreboard players set @e[sort=nearest,limit=1,type=text_display,tag=tsk.clickIndicator] tsk.indicatorTimer 20
execute unless entity @s[tag=tsk.castedAbility] run scoreboard players set @s tsk.rightClickTimer 60
execute unless entity @s[tag=tsk.castedAbility] run scoreboard players add @s tsk.rightClick 1
execute unless entity @s[tag=tsk.castedAbility] run scoreboard players add @s tsk.clickCount 1

execute if entity @s[tag=tsk.castedAbility] run tellraw @s [{"text":"You are on cooldown!","color": "gray"}]
execute if entity @s[tag=tsk.castedAbility] run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1
execute if entity @s[tag=tsk.castedAbility] run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10000 1