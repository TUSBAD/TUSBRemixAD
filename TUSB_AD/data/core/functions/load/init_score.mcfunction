#> core:load/init_score
#
# 事前に決めるスコア
#
# @within function core:load/once

# ダメージ計算用
scoreboard players set #5120 Damage 5120

# # 難易度による経験値係数
# scoreboard players set #picnic NextExp 50
# scoreboard players set #casual NextExp 75
# scoreboard players set #hardcore NextExp 100
# scoreboard players set #another NextExp 125
# scoreboard players set #nightmare NextExp 150

#時間初期化
execute unless score #Hours Count matches 0.. run scoreboard players set #Hours Count 0
execute unless score #Minutes Count matches 0.. run scoreboard players set #Minutes Count 0

###総獲得経験値量初期化
scoreboard players add #World AllExp 0
