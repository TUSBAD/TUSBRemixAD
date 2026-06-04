#> mob_manager:skill/magic/time_realization/
#
# タイム・リアリゼーション
# 
# @within function mob_manager:skill/enemy/*

# 生存時間を表示
me はタイム・リアリゼーションを唱えた！
tellraw @a {"translate":"%1$sの生存時間：%2$stick","with": [{"selector": "@s"},{"score": {"name": "@s","objective": "LiveTime"}}],"color": "dark_purple"}
