#> player_manager:one_minute
#
# 1分処理
#
# @within function player_manager:ten_seconds
#declare score_holder #Minutes Count

# -> 1時間処理
## 使用するときにコメントアウトを外してください。
# execute if score #Minutes Count matches 0 run function player_manager:one_hour

# 牧師さんからヒントを聞くフラグ
    scoreboard players set @s PastorFlag 0