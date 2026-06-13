#> core:clock/one_hour
#
#> 1時間処理
#
# @within function core:clock/one_minute
#declare score_holder #Minutes Count
#declare score_holder #Hours Count

#> 1分カウントをリセットして、1時間カウントを加算
scoreboard players set #Minutes Count 0
scoreboard players add #Hours Count 1