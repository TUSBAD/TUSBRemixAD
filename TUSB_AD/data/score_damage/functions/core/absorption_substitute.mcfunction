#> score_damage:core/absorption_substitute
#
# 
#
# @within function score_damage:core/absorption_subtract

# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $SubtractedAbsorptionAmount ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] store success score $HasDependency ScoreDamageCore unless score @s ScoreToAbsorption matches 0.. run scoreboard players operation @s ScoreToAbsorption = $SubtractedAbsorptionAmount ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation @s ScoreToAbsorption -= $Damage ScoreDamageCore
        execute if entity @s[type=player] if score $HasDependency ScoreDamageCore matches 0 run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"ScoreToAbsorption","underlined":true,"color":"#4c4cff"},{"text":"が導入されていないため\nPlayerに緩衝体力ダメージを与えることは出来ません","color":"white"}]
    # Mob
        execute if entity @s[type=!player] if score $SubtractedAbsorptionAmount ScoreDamageCore matches 1.. store result entity @s AbsorptionAmount float 0.0001 run scoreboard players get $SubtractedAbsorptionAmount ScoreDamageCore

tellraw @a {"score": {"name": "$Damage","objective": "ScoreDamageCore"}}
# 演出
    summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"minecraft:resistance",amplifier:127b,duration:1,show_particles:0b},{id:"minecraft:instant_health",amplifier:0b,duration:1,show_particles:0b}]}
    summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"minecraft:resistance",amplifier:127b,duration:1,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:1,show_particles:0b}]}
    execute if data storage score_damage: Argument{DisableParticle:0b} at @s run function score_damage:core/damage_indicator

# リセット
    scoreboard players reset $SubtractedAbsorptionAmount ScoreDamageCore
    scoreboard players reset $Damage ScoreDamageCore
