#> core:clock/ten_seconds
#
# 10秒処理
# ここには処理を追加しないこと。必要な場合、それぞれのフォルダにten_senondsを作成して処理を追加すること。
# @within function core:clock/one_second
#declare score_holder #Seconds Count
#declare score_holder #TenSeconds Count

scoreboard players set #Seconds Count 0
scoreboard players add #TenSeconds Count 1
execute if score #TenSeconds Count matches 6.. run function core:clock/one_minute