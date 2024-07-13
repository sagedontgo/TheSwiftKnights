# 
execute as @a[tag=!tsk.joined] run function tsk:player_first_join

# Actionbar
function tsk:display_proper_actionbar


# Avoid scoreboard overflow
execute as @a if score @s tsk.maxHp <= @s tsk.hp run scoreboard players operation @s tsk.hp = @s tsk.maxHp
execute as @a if score @s tsk.maxDef <= @s tsk.def run scoreboard players operation @s tsk.def = @s tsk.maxDef
execute as @a if score @s tsk.maxHunger <= @s tsk.hungerBar run scoreboard players operation @s tsk.hungerBar = @s tsk.maxHunger
execute as @a if score @s tsk.manaMax <= @s tsk.mana run scoreboard players operation @s tsk.mana = @s tsk.manaMax

## Staff Functionality (tsk:staff)
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk: "staff"}}}},tag=!tsk.holdingStaff] at @s run function tsk:staff/equipped_staff
execute as @a[nbt=!{SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk: "staff"}}}},tag=tsk.holdingStaff] at @s run function tsk:staff/unequipped_staff

execute as @a[tag=tsk.holdingStaff] positioned ~ ~1.2 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=tsk.staffInteraction] ~ ~1.2 ~
execute as @a[tag=tsk.holdingGrimoire] positioned ~ ~1.2 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=tsk.grimoireInteraction] ~ ~1.2 ~

execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk: "grimoire"}}}},tag=!tsk.holdingGrimoire] at @s run function tsk:staff/grimoires/equipped_grimoire
execute as @a[nbt=!{SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk: "grimoire"}}}},tag=tsk.holdingGrimoire] at @s run function tsk:staff/grimoires/unequipped_grimoire
execute as @a[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:max_stack_size": 1, "minecraft:custom_data": {tsk: "grimoire"}}}},tag=tsk.holdingGrimoire] at @s run function tsk:staff/grimoires/particles

execute as @e[type=interaction,tag=tsk.grimoireInteraction] on target run function tsk:staff/grimoires/check

execute as @a[tag=tsk.holdingStaff,scores={tsk.leftClick=3..}] run function tsk:staff/ability_check/riff_ability
execute as @a[tag=tsk.holdingStaff,scores={tsk.rightClick=3..}] at @s run function tsk:staff/ability_check/shield_ability
execute as @a[tag=tsk.holdingStaff,predicate=tsk:is_sneaking,scores={tsk.leftClick=1..}] at @s run function tsk:staff/ability_check/anthem_ability
execute as @a[tag=tsk.holdingStaff,predicate=tsk:is_sneaking,scores={tsk.rightClick=1..}] at @s run function tsk:staff/ability_check/trick_ability


## HP System (tsk:hp)
execute as @a[nbt=!{active_effects:[{id:"minecraft:resistance"}]}] run effect give @s resistance infinite 4 true
execute as @e[scores={tsk.preCalDamageTaken=1..}] as @s run function tsk:hp/calc_dmg_taken
execute as @e[scores={tsk.preCalDamageDealt=1..}] as @s run function tsk:hp/calc_dmg_dealt

execute as @e[type=#tsk:all,tag=!tsk.healed] run function tsk:hp/mobs

execute as @a store result score @s tsk.hpDiff run scoreboard players operation @s tsk.lastTickHp -= @s tsk.hp
execute as @e[scores={tsk.hpDiff=1..}] store result score @s tsk.hpDiffStorage run scoreboard players get @s tsk.hpDiff
execute as @a run scoreboard players operation @s tsk.lastTickHp = @s tsk.hp

execute as @e[type=#tsk:all] as @s store result score @s tsk.mobRealHp run data get entity @s Health 1
execute as @e[type=#tsk:all] as @s store result score @s tsk.hpDiff if score @s tsk.mobLastTickHp > @s tsk.mobRealHp run scoreboard players operation @s tsk.mobLastTickHp -= @s tsk.mobRealHp
execute as @e[type=#tsk:all,scores={tsk.hpDiff=1..}] store result score @s tsk.hpDiffStorage run scoreboard players get @s tsk.hpDiff
execute as @e[type=#tsk:all,scores={tsk.hpDiff=1..}] run function tsk:hp/calc_new_hp
execute as @e[type=#tsk:all] as @s run scoreboard players operation @s tsk.mobLastTickHp = @s tsk.mobRealHp

execute as @e[type=#tsk:all,tag=!tsk.hurtTime,nbt={HurtTime:10s}] run tag @s add tsk.hurtTime
execute as @e[type=#tsk:all,tag=tsk.hurtTime,scores={tsk.healthDisplayTimer=1..}] run scoreboard players remove @s tsk.healthDisplayTimer 1
execute as @e[type=#tsk:all,nbt={HurtTime:10s}] at @s run function tsk:hp/hp_display
execute as @e[type=#tsk:all,scores={tsk.healthDisplayTimer=..1}] if entity @s[tag=tsk.hurtTime] at @s run function tsk:hp/hp_undisplay

execute as @e[type=text_display,tag=tsk.dmgIndicator] as @s unless score @s tsk.indicatorTimer matches 1.. run kill @s
execute as @e[type=text_display,tag=tsk.dmgIndicator] as @s if score @s tsk.indicatorTimer matches 1.. run scoreboard players remove @s tsk.indicatorTimer 1

execute as @a[nbt={active_effects:[{id:"minecraft:health_boost",amplifier:100b}]}] run function tsk:hp/clear_aec

# Fall Damage // enable if you want fall damage 
# execute as @a store result score @s tsk.fallDamageHeight run data get entity @s FallDistance 1
# execute as @a[] if score @s tsk.fallDamageHeight matches 30.. at @s unless block ~ ~-1 ~ #tsk:cushions_fall_damage unless block ~ ~ ~ #tsk:cushions_fall_damage_inside unless block ~ ~-1 ~ #tsk:cushions_fall_damage_inside run tag @s add tsk.deathFallDamage
# execute as @a if score @s tsk.fallDamageHeight matches 15..29 at @s unless block ~ ~-1 ~ #tsk:cushions_fall_damage unless block ~ ~ ~ #tsk:cushions_fall_damage_inside unless block ~ ~-1 ~ #tsk:cushions_fall_damage_inside run tag @s add tsk.stunFallDamage
# execute as @a[tag=tsk.deathFallDamage] at @s run function tsk:hp/death_fall_damage
# execute as @a[tag=tsk.stunFallDamage] at @s run function tsk:hp/stun_fall_damage
# execute as @a[scores={tsk.bleedingTimer=1..}] at @s run function tsk:hp/bleeding_timer

# Hunger
effect give @a[scores={tsk.hunger=18..},tag=!tsk.full] hunger 1 255 true
effect give @a[scores={tsk.hunger=..14},tag=!tsk.full] saturation 1 1 true
effect give @a[tag=tsk.full] saturation infinite 3 true

# "Too Full" Bar
execute as @a[scores={tsk.hungerBar=20..},tag=!tsk.full] run function tsk:hp/hunger/full
execute as @a[scores={tsk.digestionTimer=1..},tag=tsk.ate] run scoreboard players remove @s tsk.digestionTimer 1
execute as @a[scores={tsk.digestionTimer=..1},tag=tsk.ate] run function tsk:hp/hunger/ate
execute as @a[scores={tsk.digestionTimer=1..},tag=tsk.full] run scoreboard players remove @s tsk.digestionTimer 1
execute as @a[scores={tsk.digestionTimer=..1},tag=tsk.full] run function tsk:hp/hunger/digested

# Death.
execute as @a[scores={tsk.hp=..0}] at @s run function tsk:hp/death
execute as @e[type=#tsk:all,scores={tsk.hp=..0}] at @s run function tsk:hp/mob_death

# Potions
execute as @e[type=potion,nbt={Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},tag=!tsk.healingPotionWithMarker] at @s run function tsk:hp/potion/healing/replace
execute as @e[type=potion,tag=tsk.healingPotionWithMarker] store result entity @s Air short 1 run time query gametime
execute as @e[type=marker,tag=tsk.newHealingPotion.marker] at @s unless predicate tsk:riding_potion run function tsk:hp/potion/healing/landed
execute as @e[type=potion,nbt={Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}}},tag=!tsk.strongHealingPotionWithMarker] at @s run function tsk:hp/potion/strong_healing/replace
execute as @e[type=potion,tag=tsk.strongHealingPotionWithMarker] store result entity @s Air short 1 run time query gametime
execute as @e[type=marker,tag=tsk.newStrongHealingPotion.marker] at @s unless predicate tsk:riding_potion run function tsk:hp/potion/strong_healing/landed

execute as @e[nbt={active_effects:[{id:"minecraft:regeneration"}]},tag=!tsk.regenerating] run function tsk:hp/potion/regen/equip
execute as @e[scores={tsk.regenDuration=1..},tag=tsk.hasRegeneration] run scoreboard players remove @s tsk.regenDuration 1
execute as @e[scores={tsk.regenDuration=1..1},tag=tsk.hasRegeneration] run function tsk:hp/potion/regen/wear_off
execute as @e[tag=tsk.hasRegeneration,nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] run function tsk:hp/potion/regen/wear_off

execute as @e[scores={tsk.regenDuration=1..},tag=!tsk.regenTimerStarted] as @s run function tsk:hp/potion/regen/timer
execute as @e[scores={tsk.secondsClock=1..},tag=tsk.hasRegeneration] if score @s tsk.secondsClock matches 1.. as @s run scoreboard players remove @s tsk.secondsClock 1
execute as @e[scores={tsk.secondsClock=1..},tag=tsk.hasRegeneration] if score @s tsk.secondsClock matches ..1 as @s run function tsk:hp/potion/regen/regenerate


# Absorption
execute as @a[nbt={active_effects:[{id:"minecraft:absorption"}]},tag=!tsk.hasAbsorption] run function tsk:hp/absorption/equip
execute as @a[scores={tsk.absorptionDuration=1..},tag=tsk.hasAbsorption] run scoreboard players remove @s tsk.absorptionDuration 1
execute as @a[scores={tsk.absorptionDuration=..1},tag=tsk.hasAbsorption] run function tsk:hp/absorption/wear_off
execute as @a[tag=tsk.hasAbsorption,nbt=!{active_effects:[{id:"minecraft:absorption"}]}] run function tsk:hp/absorption/wear_off

# Mana
execute as @a[tag=!tsk.regeneratingMana] if score @s tsk.mana < @s tsk.manaMax run function tsk:mana/start_timer
execute as @a if score @s tsk.manaRegenTimer matches 1.. as @s run scoreboard players remove @s tsk.manaRegenTimer 1
execute as @a if score @s tsk.manaRegenTimer matches ..1 as @s run function tsk:mana/regenerate
execute as @a[tag=tsk.regeneratingMana] if score @s tsk.mana >= @s tsk.manaMax run function tsk:mana/stop

# Combat
execute as @a[tag=tsk.dashReady] at @s if predicate tsk:is_sneaking run function tsk:combat/dash
execute as @a[tag=tsk.jumped] if score @s tsk.jumpCount matches 1.. if predicate tsk:is_on_ground at @s run execute as @e[sort=nearest,distance=0.01..3] at @s run function tsk:combat/jump_hit
execute as @a[tag=tsk.jumped] if score @s tsk.jumpCount matches 1.. if predicate tsk:is_on_ground at @s run function tsk:combat/used_jump
execute as @a[tag=!tsk.jumped,scores={tsk.jumpCount=1..}] run scoreboard players reset @s tsk.jumpCount
execute as @a store success score @s tsk.dashReady run execute if entity @s[tag=tsk.dashReady]
execute as @a store success score @s tsk.jumpReady run execute if entity @s[tag=tsk.jumped]

# Elemental Reactions

# Apply
execute as @e[type=!#tsk:exclude,tag=!tsk.fire] if predicate tsk:elements/fire at @s run function tsk:elements/apply/fire
execute as @e[type=!#tsk:exclude,tag=tsk.fire] unless predicate tsk:elements/fire at @s run function tsk:elements/remove/fire

execute as @e[type=!#tsk:exclude,tag=!tsk.wet] at @s if predicate tsk:elements/water run function tsk:elements/apply/water
execute as @e[type=!#tsk:exclude,tag=tsk.wet] at @s unless predicate tsk:elements/water run function tsk:elements/remove/water
