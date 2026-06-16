#> core:one_second
#
#> 1秒ごとに実行される処理
#
# @within function core:tick
#declare score_holder #Seconds Count
#declare score_holder #World ChangeDifficulty

# 難易度変更
execute if score #World ChangeDifficulty matches 0.. run function main:difficulty/change/adopt

#> 予感の赤い奴を消します
execute if score #Seconds Count matches 8 run worldborder warning distance 0