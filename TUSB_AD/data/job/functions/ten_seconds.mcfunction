#> job:ten_seconds
#
# 職業10秒処理
#
# @within function job:player_one_second

# -> 30秒処理
 execute if score #TenSeconds Count matches 0 run function job:thirty_seconds
 execute if score #TenSeconds Count matches 3 run function job:thirty_seconds

# -> 1分処理
 execute if score #TenSeconds Count matches 0 run function job:one_minute
