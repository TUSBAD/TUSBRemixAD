#> core:clock/one_second
#
# 1秒ごとに実行される処理
# ここには処理を追加しないこと。必要な場合、それぞれのフォルダにone_secondを作成して処理を追加すること。
# @within function core:clock/tick
#define score_holder #Ticks Count
#declare score_holder #Seconds Count

#> #tick Countをリセットして、#second Countを加算。 10秒ごとにcore:clock/ten_secondsを実行。
scoreboard players set #Ticks Count 0
scoreboard players add #Seconds Count 1
execute if score #Seconds Count matches 10.. run function core:clock/ten_seconds