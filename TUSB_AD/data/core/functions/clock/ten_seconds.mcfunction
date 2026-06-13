#> core:clock/ten_seconds
#
# 10秒処理
#
# @within function core:clock/one_second
#declare score_holder #Seconds Count
#declare score_holder #TenSeconds Count

scoreboard players set #Seconds Count 0
scoreboard players add #TenSeconds Count 1
execute if score #TenSeconds Count matches 6.. run function core:clock/one_minute