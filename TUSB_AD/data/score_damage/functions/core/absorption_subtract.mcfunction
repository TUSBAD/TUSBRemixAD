#> score_damage:core/absorption_subtract
#
# 緩衝体力を減らす
#
# @within function score_damage:core/attack

#> Temp
# @private
    #declare score_holder $SubtractedAbsorptionAmount

# 緩衝体力を計算
    scoreboard players operation $SubtractedAbsorptionAmount ScoreDamageCore = $AbsorptionAmount ScoreDamageCore
    # ダメージが緩衝体力以下の場合緩衝体力を減らしダメージを0にする
        execute if score $Damage ScoreDamageCore <= $AbsorptionAmount ScoreDamageCore run scoreboard players operation $SubtractedAbsorptionAmount ScoreDamageCore -= $Damage ScoreDamageCore
        execute if score $Damage ScoreDamageCore <= $AbsorptionAmount ScoreDamageCore run scoreboard players set $Damage ScoreDamageCore 0
    # ダメージが緩衝体力を上回っていれば緩衝体力をゼロにしてダメージを減らす
        execute if score $Damage ScoreDamageCore > $AbsorptionAmount ScoreDamageCore run scoreboard players set $SubtractedAbsorptionAmount ScoreDamageCore 0
        execute if score $Damage ScoreDamageCore > $AbsorptionAmount ScoreDamageCore run scoreboard players operation $Damage ScoreDamageCore -= $AbsorptionAmount ScoreDamageCore

# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $AbsorptionAmount ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $SubtractedAbsorptionAmount ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] store success score $HasDependency ScoreDamageCore unless score @s ScoreToHealth matches 0.. run scoreboard players operation @s ScoreToHealth = $AbsorptionAmount ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation @s ScoreToHealth -= $Damage ScoreDamageCore
        execute if entity @s[type=player] if score $HasDependency ScoreDamageCore matches 0 run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"ScoreToHealth","underlined":true,"color":"#4c4cff","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/ScoreToHealth"}},{"text":"が導入されていないため\nPlayerにダメージを与えることは出来ません","color":"white"}]
    # Mob
        execute if entity @s[type=!player] if score $SubtractedAbsorptionAmount ScoreDamageCore matches 1.. store result entity @s AbsorptionAmount float 0.0001 run scoreboard players get $SubtractedAbsorptionAmount ScoreDamageCore

# 演出
    summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"minecraft:resistance",amplifier:127b,duration:1,show_particles:0b},{id:"minecraft:instant_health",amplifier:0b,duration:1,show_particles:0b}]}
    summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"minecraft:resistance",amplifier:127b,duration:1,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:1,show_particles:0b}]}
    execute if data storage score_damage: Argument{DisableParticle:0b} at @s run function score_damage:core/damage_indicator

# 代入
    execute store result entity @s AbsorptionAmount float 0.0001 run scoreboard players get $SubtractedAbsorptionAmount ScoreDamageCore

# リセット
    scoreboard players reset $SubtractedAbsorptionAmount ScoreDamageCore
