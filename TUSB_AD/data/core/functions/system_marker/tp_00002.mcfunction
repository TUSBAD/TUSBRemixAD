#> calc:system_marker/tp_00002
#
# #0-0-0-0-2召喚
#
#
#実行座標に0-0-0-0-2を召喚します
#使い終わったら必ず
#execute as 0-0-0-0-2 run function calc:system_marker/return
#を実行すること

execute unless entity 0-0-0-0-2 run summon marker ~ ~ ~ {UUID:[I;0,0,0,2]}
tp 0-0-0-0-2 ~ ~ ~ ~ ~