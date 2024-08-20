tellraw @s ["",{"text":"Welcome to "},{"text":"T","color":"#e43a96"},{"text":"h","color":"#e34aa0"},{"text":"e","color":"#e25aaa"},{"text":" ","color":"#e16bb4"},{"text":"S","color":"#e07bbe"},{"text":"w","color":"#df8bc8"},{"text":"i","color":"#de9cd2"},{"text":"f","color":"#ddacdc"},{"text":"t","color":"#dcbce6"},{"text":" ","color":"#dbcdf0"},{"text":"K","color":"#d1bdee"},{"text":"n","color":"#c7aeed"},{"text":"i","color":"#be9fec"},{"text":"g","color":"#b490ea"},{"text":"h","color":"#ab81e9"},{"text":"t","color":"#a172e8"},{"text":"s","color":"#9863e7"},{"text":", ","extra": [{"selector":"@s"},{"text":"!"}],"color": "white"}]
tellraw @s [{"text":"You are now automatically playing as","color": "white"},{"text":" Harmonia","color": "#9863e7","extra": [{"text":"!"}]}]
tellraw @s ["",{"text":"Check out more at the "},{"text":"GitHub","clickEvent":{"action":"open_url","value":"https://github.com/sagedontgo/TheSwiftKnights"},"color":"aqua","underlined": true},{"text":" page!"}]

tag @s add tsk.joined
tag @s add tsk.knight1

scoreboard players set @s tsk.hp 100
scoreboard players set @s tsk.maxHp 100
scoreboard players set @s tsk.hungerBar 0
scoreboard players set @s tsk.maxHunger 20
scoreboard players set @s tsk.def 0
scoreboard players set @s tsk.maxDef 100
scoreboard players set @s tsk.mana 100
scoreboard players set @s tsk.manaMax 100
scoreboard players set @s tsk.manaRegenRate 5
scoreboard players set @s tsk.manaRegenTimer.stat 35
scoreboard players set @s tsk.critRate 12
scoreboard players set @s tsk.critDamagePercentage 20
scoreboard players set @s tsk.str 10
scoreboard players set @s tsk.strBackup 10
scoreboard players set @s tsk.dexterity 5
scoreboard players set @s tsk.constitution 12
scoreboard players set @s tsk.gold 0
scoreboard players set @s tsk.silver 0 
scoreboard players set @s tsk.strMax 50
scoreboard players set @s tsk.luck 12
scoreboard players set @s tsk.combatMastery 5
scoreboard players set @s tsk.dashChargeNeeded 50
scoreboard players set @s tsk.jumpChargeNeeded 100
scoreboard players set @s tsk.meleeAbilityChargeNeeded 150
scoreboard players set $level tsk.worldLevel 1
execute as @s run function tsk:crit/damage/calculate_crit_damage
execute positioned 1 318 1 as @s run function ajjgui:_portself {id:"tsk.modifyRelic"}
execute positioned 1 318 -1 as @s run function ajjgui:_portself {id:"tsk.upgradeRelic"}
execute as @a unless score @s tsk.id = @s tsk.id store result score @s tsk.id run scoreboard players add #id_count tsk.id 1
