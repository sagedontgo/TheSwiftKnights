setblock 0 318 0 oak_sign replace

scoreboard objectives add tsk.int dummy
scoreboard players set $1 tsk.int 1
scoreboard players set $4 tsk.int 4
scoreboard players set $10 tsk.int 10
scoreboard players set $1000 tsk.int 1000

scoreboard objectives add tsk.leftClick dummy
scoreboard objectives add tsk.rightClick dummy
scoreboard objectives add tsk.jumpCount minecraft.custom:minecraft.jump

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
scoreboard objectives add tsk.def dummy
scoreboard objectives add tsk.tempDef dummy
scoreboard objectives add tsk.maxDef dummy

scoreboard objectives add tsk.secondsClock dummy
scoreboard objectives add tsk.indicatorTimer dummy

scoreboard objectives add tsk.preCalDamageTaken minecraft.custom:minecraft.damage_resisted
scoreboard objectives add tsk.damageTaken dummy

scoreboard objectives add tsk.preCalDamageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add tsk.damageDealt dummy

scoreboard objectives add tsk.hunger food
scoreboard objectives add tsk.maxHunger dummy
scoreboard objectives add tsk.hungerBar dummy
scoreboard objectives add tsk.digestionTimer dummy


scoreboard objectives add tsk.bleedingTimer dummy

scoreboard objectives add tsk.mana dummy
scoreboard objectives add tsk.manaMax dummy
scoreboard objectives add tsk.manaRegenRate dummy
scoreboard objectives add tsk.manaRegenTimer dummy
scoreboard objectives add tsk.manaRegenTimer.stat dummy

scoreboard objectives add tsk.str dummy
scoreboard objectives add tsk.strMax dummy

scoreboard objectives add tsk.level dummy
scoreboard objectives add tsk.levelXp dummy
scoreboard objectives add tsk.levelXpRequired dummy
scoreboard objectives add tsk.worldLevel dummy

scoreboard objectives add tsk.hitCount dummy
scoreboard objectives add tsk.combatTimer dummy
scoreboard objectives add tsk.dashReady dummy
scoreboard objectives add tsk.jumpReady dummy

scoreboard objectives add tsk.elementTimer.earth dummy

scoreboard objectives add tsk.creeperFuse dummy

forceload add 0 0 16 16 