#> player_manager:ten_seconds
#
# 10秒処理
# いる？
# @within function player_manager:one_second
#declare score_holder #TenSeconds Count


# -> 1分処理
execute if score #TenSeconds Count matches 0 run function player_manager:one_minute