#> core:clock/tick
#
# 時間を計算します
# ここには処理を追加しないこと。必要な場合、それぞれのフォルダにtickを作成して処理を追加すること。
# @within function core:tick
#declare score_holder #Ticks Count
#declare score_holder #Ten_Ticks Count

scoreboard players add #Ticks Count 1
scoreboard players add #Ten_Ticks Count 1

#> 10tickごとに実行
execute if score #Ten_Ticks Count matches 10.. run function core:clock/half_second

#> 20tickごとに実行
execute if score #Ticks Count matches 20.. run function core:clock/one_second
