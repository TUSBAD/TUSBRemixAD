#> core:difficulty/change/stand.m
#
# 難易度を変更するまでの処理
#
# @within function core:difficulty/select/

# タイマーセット
    scoreboard players set #World ChangeDifficulty 30

# 表示
    $tellraw @a ["",{"translate":"難易度を%1$sへ変更する。","with":[{"translate": "$(text)","color": "$(color)"}]}," ",{"translate":"→拒否する","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ChangeDifficulty set 1"}}]
    tellraw @a ["",{"translate":"変更まで残り%1$s秒……","with":[{"score":{"name":"#World","objective":"ChangeDifficulty"}}]}]

# リセット
    scoreboard players enable @a ChangeDifficulty
