#> core:clock/one_minute
#
#> 1分処理
# ここには処理を追加しないこと。必要な場合、それぞれのフォルダにone_minuteを作成して処理を追加すること。
# @within function core:clock/ten_seconds
#declare score_holder #TenSeconds Count
#declare score_holder #Minutes Count

#> 10秒カウントリセットし1分カウントを加算、1分カウントが60になったら1時間処理を実行
scoreboard players set #TenSeconds Count 0
scoreboard players add #Minutes Count 1
execute if score #Minutes Count matches 60.. run function core:clock/one_hour