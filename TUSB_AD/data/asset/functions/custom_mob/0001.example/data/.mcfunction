#> asset:custom_mob/0001.example/data/
#
# mobの設定
#
# @within function asset:custom_mob/0001.example/trigger/data/

## reset
data remove storage asset: mob

## data_set
data modify storage asset: mob.id set value "minecraft:zombie"
data modify storage asset: mob.Health set value 1
data modify storage asset: mob.AbsorptionAmount set value 1
data modify storage asset: mob.NoAI set value true
# data modify storage asset: mob.Invulnerable set value true
data modify storage asset: mob.Silent set value true
data modify storage asset: mob.Glowing set value true
data modify storage asset: mob.PersistenceRequired set value true
data modify storage asset: mob.CustomName set value '{"text":"§5カカシ §d-another-"}'
data modify storage asset: mob.CustomNameVisible set value true
data modify storage asset: mob.DeathLootTable set value "empty"
data modify storage asset: mob.Tags set value ["CustomHealth","ShieldTried"]
# data modify storage asset: mob.PortalCooldown set value 0

## attributes_set
data modify storage asset: mob.Attributes append value {Name:generic.max_health, Base:1}
data modify storage asset: mob.Attributes append value {Name:generic.max_absorption, Base:2048}
data modify storage asset: mob.Attributes append value {Name:generic.attack_damage, Base:0}
data modify storage asset: mob.Attributes append value {Name:generic.movement_speed, Base:0}
data modify storage asset: mob.Attributes append value {Name:generic.armor, Base:0}
data modify storage asset: mob.Attributes append value {Name:generic.armor_toughness, Base:0}
data modify storage asset: mob.Attributes append value {Name:generic.knockback_resistance, Base:1}
data modify storage asset: mob.Attributes append value {Name:generic.follow_range, Base:0}
data modify storage asset: mob.Attributes append value {Name:generic.attack_knockback, Base:0}

## item_set
# loot replace entity @e[tag=ItemHolder,limit=1] armor.head
# item replace entity @e[tag=ItemHolder,limit=1] armor.chest
# item replace entity @e[tag=ItemHolder,limit=1] armor.legs
# item replace entity @e[tag=ItemHolder,limit=1] armor.feet

# loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand
# item replace entity @e[tag=ItemHolder,limit=1] weapon.offhand

# data modify storage asset: mob.ArmorItems set from entity @e[tag=ItemHolder,limit=1] ArmorItems
# data modify storage asset: mob.HandItems set from entity @e[tag=ItemHolder,limit=1] HandItems
# kill @e[tag=ItemHolder,limit=1]

# data modify storage asset: mob.ArmorDropChances set value [0.0F,0.0F,0.0F,0.0F]
# data modify storage asset: mob.HandDropChances set value [0.0F,0.0F]

## effect_set
# data modify storage asset: mob.ActiveEffects append value {Id:0,Amplifier:1,Duration:1,ShowParticles:0b}

## passengers_set_1
# data modify storage _: _ set from storage asset: mob
# data modify storage asset:context id set value 1
# function #asset:mob/get_data
# data modify storage _: _.Passengers append from storage asset: mob
# data modify storage asset: mob set from storage _: _
# data remove storage _: _

## passengers_set_2
# data modify storage _: _ set from storage asset: mob
# data modify storage asset: mob.id set value
# data modify storage _: _.Passengers append from storage asset: mob
# data modify storage asset: mob set from storage _: _
# data remove storage _: _

## end
data modify storage _: _ set from storage asset: mob
data modify storage asset: mob set value {id:"experience_orb",Age:6000s}
data modify storage asset: mob.Passengers append from storage _: _
data remove storage _: _
