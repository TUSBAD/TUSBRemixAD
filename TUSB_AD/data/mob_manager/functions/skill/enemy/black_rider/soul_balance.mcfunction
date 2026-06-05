#> mob_manager:skill/enemy/black_rider/soul_balance
#
# ソウルバランス
#
# @within function mob_manager:skill/enemy/black_rider/

me は §7§lソウルバランス§r を唱えた！
scoreboard players set _ TUSB 10
scoreboard players operation @a[distance=..32] MP /= _ TUSB
