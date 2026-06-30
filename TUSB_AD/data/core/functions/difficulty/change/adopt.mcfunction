#> core:difficulty/change/adopt
#
# 難易度変更のカウントダウン
#
# @within function 

# 計算
    scoreboard players remove #World ChangeDifficulty 1
    scoreboard players operation _ ChangeDifficulty = #World ChangeDifficulty
    scoreboard players set _ _ 10
    scoreboard players operation _ ChangeDifficulty %= _ _

# 表示
    execute if score #World ChangeDifficulty matches 1.. if score _ ChangeDifficulty matches 0 run tellraw @a ["",{"translate":"変更まで残り%1#s秒……","with":[{"score":{"name":"#World","objective":"ChangeDifficulty"}}]}]

# 変更
    execute if score #World ChangeDifficulty matches 0 run function core:difficulty/change/apply.m with storage core: difficult.change
    execute if score #World ChangeDifficulty matches 0 run data remove storage core: difficult.change_to
    execute if score #World ChangeDifficulty matches 0 run scoreboard players reset #World ChangeDifficulty
