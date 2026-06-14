#> world_manager:one_minute
#
# ワールド1分処理
#
# @within function world_manager:ten_seconds
#declare score_holder #Minutes Count

# -> 1時間処理
## 使用するときにコメントアウトを外してください。
# execute if score #Minutes Count matches 0 run function world_manager:one_hour

# 難易度調整
    function core:set_difficulty/

# 嫌な予感のタイマー処理
    function world_manager:event/