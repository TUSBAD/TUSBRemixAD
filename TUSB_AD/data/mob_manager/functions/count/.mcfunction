#> mob_manager:count/
#
# 敵の数を数えます
#
# @within function mob_manager:one_second

# エンティティ数カウント
    execute store result score _ _ if entity @e[tag=Enemy,tag=!Garbage]

# エンティティが一定数以上であればGarbageループ処理
# 201体以上に設定
    scoreboard players remove _ _ 200
    execute if score _ _ matches 1.. run function mob_manager:count/loop