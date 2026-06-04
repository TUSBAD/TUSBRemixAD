#> api:dice/score
#
# #math:diceの結果を @s Random に保存する
#
# @within function

function #math:dice

# 乱数結果を代入する
execute store result score @s Random run data get storage math: out.sum
