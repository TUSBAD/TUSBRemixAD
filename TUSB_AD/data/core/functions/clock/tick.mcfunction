#> core:clock/tick
#
# 時間を計算します
#
# @within function core:tick
#declare score_holder #Tick Count

#> 20tickごとに実行
scoreboard players add #Ticks Count 1
execute if score #Ticks Count matches 20.. run function core:clock/one_second