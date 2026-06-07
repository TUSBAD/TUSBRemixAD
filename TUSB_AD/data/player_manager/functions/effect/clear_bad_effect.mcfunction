#> player_manager:effect/clear_bad_effect
# 悪い効果を消す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# execute store result score _ TUSB run data get storage tusb_remake: active_effects[{id:"minecraft:speed"}].amplifier
# execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:speed

effect clear @s minecraft:slowness

# execute store result score _ TUSB run data get storage tusb_remake: active_effects[{id:"minecraft:haste"}].amplifier
# execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:haste

effect clear @s minecraft:mining_fatigue

# execute store result score _ TUSB run data get storage tusb_remake: active_effects[{id:"minecraft:strength"}].amplifier
# execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:strength

execute store result score _ TUSB run data get storage tusb_remake: active_effects[{Id:8}].amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:jump_boost

effect clear @s minecraft:nausea

# execute store result score _ TUSB run data get storage tusb_remake: active_effects[{Id:11}].amplifier
# execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:resistance

effect clear @s minecraft:blindness
effect clear @s minecraft:hunger
effect clear @s minecraft:weakness
effect clear @s minecraft:poison

effect clear @s minecraft:wither
effect clear @s minecraft:levitation

# execute store result score _ TUSB run data get storage tusb_remake: active_effects[{Id:29}].amplifier
# execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:conduit_power

# execute store result score _ TUSB run data get storage tusb_remake: active_effects[{Id:30}].amplifier
# execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:dolphins_grace

effect clear @s minecraft:bad_omen

effect give @s[tag=Doom] invisibility 1 6 true

# execute store result score _ TUSB run data get storage tusb_remake: active_effects[{Id:32}].amplifier
# execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:hero_of_the_village

playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 6 0.5