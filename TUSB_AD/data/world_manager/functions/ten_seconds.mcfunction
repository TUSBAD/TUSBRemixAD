#> world_manager:ten_seconds
#
# ワールド10秒毎処理
#
# @within function world_manager:one_second
#declare score_holder #TenSeconds Count

# -> 1分処理
## 使用するときにコメントアウトを外してください。
execute if score #TenSeconds Count matches 0 run function world_manager:one_minute
