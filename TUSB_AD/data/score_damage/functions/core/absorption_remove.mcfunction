#> score_damage:core/absorption_remove
#
# 
#
# @within function score_damage:core/absorption_subtract

scoreboard players operation $Damage ScoreDamageCore -= $SubtractedAbsorptionAmount ScoreDamageCore
scoreboard players set @s ScoreToAbsorption 0
scoreboard players reset $AbsorptionAmount ScoreDamageCore
