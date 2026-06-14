#> core:clock/tick
#
# 時間を計算します
# ここには処理を追加しないこと。必要な場合、それぞれのフォルダにtickを作成して処理を追加すること。
# @within function core:tick
#declare score_holder #Tick Count

#> 20tickごとに実行
scoreboard players add #Ticks Count 1
execute if score #Ticks Count matches 20.. run function core:clock/one_second