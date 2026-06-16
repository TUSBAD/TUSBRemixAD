#> core:clock/one_hour
#
#> 1時間処理
# ここには処理を追加しないこと。必要な場合、それぞれのフォルダにone_hourを作成して処理を追加すること。
# @within function core:clock/one_minute
#declare score_holder #Minutes Count
#declare score_holder #Hours Count

#> 1分カウントをリセットして、1時間カウントを加算
scoreboard players set #Minutes Count 0
scoreboard players add #Hours Count 1