tellraw @s [{"text":"RARE DROP!","color": "dark_aqua"},{"text":" 1x Amber","color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10 2
playsound entity.item.pickup player @s ~ ~ ~ 10 1
loot give @s loot tsk:custom_items/relic_upgrade_items/ores/amber