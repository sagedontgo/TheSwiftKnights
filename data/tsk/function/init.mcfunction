setblock 0 318 0 oak_sign replace
forceload add 0 0 16 16 

# Statistics
## HP
scoreboard objectives add tsk.lastTickHp dummy
scoreboard objectives add tsk.hpDiff dummy
scoreboard objectives add tsk.hpDiffStorage dummy
scoreboard objectives add tsk.hp dummy
scoreboard objectives add tsk.mobRealHp dummy
scoreboard objectives add tsk.mobLastTickHp dummy
scoreboard objectives add tsk.maxHp dummy
scoreboard objectives add tsk.healthDisplayTimer dummy
scoreboard objectives add tsk.fallDamageHeight dummy
scoreboard objectives add tsk.regenDuration dummy
scoreboard objectives add tsk.regenAmplifier dummy
scoreboard objectives add tsk.absorptionDuration dummy
scoreboard objectives add tsk.absorptionAmplifier dummy
scoreboard objectives add tsk.absorptionAddHearts dummy

## DEF
scoreboard objectives add tsk.def dummy
scoreboard objectives add tsk.tempDef dummy
scoreboard objectives add tsk.maxDef dummy

## FULLNESS
scoreboard objectives add tsk.hunger food
scoreboard objectives add tsk.maxHunger dummy
scoreboard objectives add tsk.hungerBar dummy

## DEXTERITY
scoreboard objectives add tsk.dexterity dummy

## MANA
scoreboard objectives add tsk.mana dummy
scoreboard objectives add tsk.manaMax dummy
scoreboard objectives add tsk.manaRegenRate dummy
scoreboard objectives add tsk.manaRegenTimer.stat dummy

## STRENGTH AND CRIT
scoreboard objectives add tsk.str dummy
scoreboard objectives add tsk.strBackup dummy
scoreboard objectives add tsk.strMax dummy
scoreboard objectives add tsk.critRate dummy
scoreboard objectives add tsk.critDamage dummy
scoreboard objectives add tsk.critHitCount dummy

## LEVELLING
scoreboard objectives add tsk.level dummy
scoreboard objectives add tsk.levelXp dummy
scoreboard objectives add tsk.levelXpRequired dummy
scoreboard objectives add tsk.worldLevel dummy
scoreboard players set $level tsk.worldLevel 1

# COMBAT
scoreboard objectives add tsk.hitCount dummy
scoreboard objectives add tsk.combatTimer dummy
scoreboard objectives add tsk.dashReady dummy
scoreboard objectives add tsk.jumpReady dummy

# ELEMENTAL REACTIONS
## TIMER
scoreboard objectives add tsk.elementTimer.air dummy
scoreboard objectives add tsk.elementTimer.earth dummy
scoreboard objectives add tsk.elementTimer.fire dummy
scoreboard objectives add tsk.elementTimer.ice dummy
scoreboard objectives add tsk.elementTimer.water dummy

scoreboard objectives add tsk.reactionTimer.blizzard dummy
scoreboard objectives add tsk.reactionTimer.dust_storm dummy
scoreboard objectives add tsk.reactionTimer.storm dummy
scoreboard objectives add tsk.reactionTimer.wildfire dummy
scoreboard objectives add tsk.reactionTimer.freeze dummy
scoreboard objectives add tsk.reactionTimer.permafrost dummy
scoreboard objectives add tsk.reactionTimer.magma_flow dummy
scoreboard objectives add tsk.reactionTimer.melt dummy
scoreboard objectives add tsk.reactionTimer.quicksand dummy
scoreboard objectives add tsk.reactionTimer.scalding_mist dummy

## IS ACTIVE
scoreboard objectives add tsk.elementIsActive.air dummy
scoreboard objectives add tsk.elementIsActive.earth dummy
scoreboard objectives add tsk.elementIsActive.fire dummy
scoreboard objectives add tsk.elementIsActive.ice dummy
scoreboard objectives add tsk.elementIsActive.water dummy

# VARIABLES

## INTEGERS
scoreboard objectives add tsk.int dummy
scoreboard players set $1 tsk.int 1
scoreboard players set $4 tsk.int 4
scoreboard players set $10 tsk.int 10
scoreboard players set $100 tsk.int 100
scoreboard players set $1000 tsk.int 1000
scoreboard players set $10000 tsk.int 10000
scoreboard players set $100000 tsk.int 100000

# CALCULATION STUFF
## TIER SCALING VALUE
scoreboard objectives add tsk.tierScalingValue dummy
scoreboard players set $tier1 tsk.tierScalingValue 148
scoreboard players set $tier2 tsk.tierScalingValue 222
scoreboard players set $tier3 tsk.tierScalingValue 334
scoreboard players set $tier4 tsk.tierScalingValue 500
scoreboard players set $tier5 tsk.tierScalingValue 601
scoreboard players set $tier6 tsk.tierScalingValue 1001
scoreboard players set $tier7 tsk.tierScalingValue 1501

## TIER BASE HP
scoreboard objectives add tsk.tierBaseHp dummy
scoreboard players set $tier1 tsk.tierBaseHp 7
scoreboard players set $tier2 tsk.tierBaseHp 17
scoreboard players set $tier3 tsk.tierBaseHp 27
scoreboard players set $tier4 tsk.tierBaseHp 43
scoreboard players set $tier5 tsk.tierBaseHp 55
scoreboard players set $tier6 tsk.tierBaseHp 56
scoreboard players set $tier7 tsk.tierBaseHp 90

## DAMAGE DEALT
scoreboard objectives add tsk.preCalDamageTaken minecraft.custom:minecraft.damage_resisted
scoreboard objectives add tsk.damageTaken dummy

scoreboard objectives add tsk.preCalDamageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add tsk.damageDealt dummy

## STORAGE
scoreboard objectives add tsk.randomVal dummy
scoreboard objectives add tsk.calcNewHp dummy


# TIMERS
scoreboard objectives add tsk.secondsClock dummy
scoreboard objectives add tsk.indicatorTimer dummy
scoreboard objectives add tsk.soundsTimer dummy
scoreboard objectives add tsk.digestionTimer dummy
scoreboard objectives add tsk.bleedingTimer dummy
scoreboard objectives add tsk.manaRegenTimer dummy

## MISC
scoreboard objectives add tsk.jumpCount minecraft.custom:minecraft.jump

## STAFF STUFF
scoreboard objectives add tsk.leftClick dummy
scoreboard objectives add tsk.rightClick dummy