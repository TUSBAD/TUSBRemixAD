#> calc:system_marker/tp_00001
#
# #0-0-0-0-1召喚
#
#
#実行座標に0-0-0-0-1を召喚します
#使い終わったら必ず
#execute as 0-0-0-0-1 run function calc:system_marker/return
#を実行すること

execute unless entity 0-0-0-0-1 run summon marker ~ ~ ~ {UUID:[I;0,0,0,1]}
tp 0-0-0-0-1 ~ ~ ~ ~ ~