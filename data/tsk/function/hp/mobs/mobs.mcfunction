
execute as @s if entity @s[type=#tsk:tiers/tier1] run function tsk:hp/mobs/calculations/tier1
execute as @s if entity @s[type=#tsk:tiers/tier2] run function tsk:hp/mobs/calculations/tier2
execute as @s if entity @s[type=#tsk:tiers/tier3] run function tsk:hp/mobs/calculations/tier3
execute as @s if entity @s[type=#tsk:tiers/tier4] run function tsk:hp/mobs/calculations/tier4
execute as @s if entity @s[type=#tsk:tiers/tier5] run function tsk:hp/mobs/calculations/tier5
execute as @s if entity @s[type=#tsk:tiers/tier6] run function tsk:hp/mobs/calculations/tier6
execute as @s if entity @s[type=#tsk:tiers/tier7] run function tsk:hp/mobs/calculations/tier7

effect give @s health_boost infinite 100 true
execute as @s if entity @s[type=#tsk:living] run effect give @s instant_health infinite 100 true
execute as @s if entity @s[type=#tsk:undead] run effect give @s instant_damage infinite 100 true

tag @s add tsk.healed 
