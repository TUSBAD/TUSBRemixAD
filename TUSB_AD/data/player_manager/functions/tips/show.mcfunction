#> player_manager:tips/show
#
#
#
# @within function player_manager:death/


# 乱数更新
execute store result score _ Random run function api:random/update
# TIPSの総数を取得
execute store result score _ _ run data get storage tusb_remake: TIPS
# TIPSの総数で余剰
scoreboard players operation _ Random %= _ _

# トリガー有効化
scoreboard players enable @s TipsTrigger

#TIPS表示