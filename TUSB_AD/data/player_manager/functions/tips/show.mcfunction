#> player_manager:tips/show
#
#
#
# @within function player_manager:death/

# 表示するTIPSが無ければ中断
execute unless data storage player: TIPS[1] run return fail
# 乱数更新
execute store result score _ Random run function api:random/update
# TIPSの総数を取得
execute store result score _ _ run data get storage player: TIPS
# TIPSの総数で余剰
scoreboard players operation _ Random %= _ _

# トリガー有効化
scoreboard players enable @s TipsTrigger

#TIPS表示