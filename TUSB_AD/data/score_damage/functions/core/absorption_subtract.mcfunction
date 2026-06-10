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

# ダメージが緩衝体力を上回っていれば緩衝体力をゼロにしてダメージを減らす
    execute if score $Damage ScoreDamageCore > $SubtractedAbsorptionAmount ScoreDamageCore run function score_damage:core/absorption_remove

# 緩衝体力を計算する処理
    execute if score $AbsorptionAmount ScoreDamageCore matches 1.. run function score_damage:core/absorption_substitute
    scoreboard players reset $SubtractedAbsorptionAmount ScoreDamageCore