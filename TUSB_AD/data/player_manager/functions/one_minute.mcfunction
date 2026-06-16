#> player_manager:one_minute
#
# 1分処理
#
# @within function player_manager:ten_seconds
#declare score_holder #Minutes Count

# -> 30分処理
execute if score #Half_Hour Count matches 0 run function player_manager:half_hour

# 牧師さんからヒントを聞くフラグ
    scoreboard players set @s PastorFlag 0