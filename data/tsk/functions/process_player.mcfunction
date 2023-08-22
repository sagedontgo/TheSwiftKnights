tellraw @s {"text": "-----------------------------------------"}
tellraw @s {"text": "\n"}
tellraw @s {"text":"Welcome to The Swift Knights!"}
tellraw @s [{"text":"Your ID is: "},{"score":{"name": "@s","objective": "tsk.id"}},{"text": " [debug]","color": "gray","italic": true}]
tellraw @s {"text": "\n"}
tellraw @s {"text": "-----------------------------------------"}

scoreboard players set @s tsk.mana 100
scoreboard players set @s tsk.manaMax 100
scoreboard players set @s tsk.manaRegen 5
scoreboard players set @s tsk.ultPercentage 0
scoreboard players set @s tsk.ultRegenerate 0
scoreboard players set @s tsk.ultPercentageMax 100
scoreboard players set @s tsk.currentLevel 1
scoreboard players set @s tsk.nextLevel 2
scoreboard players set @s tsk.levelProgress 0


tag @s add tsk.processed
