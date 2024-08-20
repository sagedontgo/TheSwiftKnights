tellraw @s [{"text":"BONUS DROP!","color": "gold"},{"text":" 1x Imperial Jade","color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10 2
playsound entity.item.pickup player @s ~ ~ ~ 10 1
scoreboard players reset @s tsk.brokeBlock.emeraldOre
scoreboard players reset @s tsk.brokeBlock.deepslateEmeraldOre
loot give @s loot tsk:custom_items/relic_upgrade_items/ores/imperial_jade