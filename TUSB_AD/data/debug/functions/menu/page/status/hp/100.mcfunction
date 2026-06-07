#> debug:menu/page/status/hp/100
#
# 
#
# @within function debug:menu/page/status/hp/

attribute @s minecraft:generic.max_health modifier remove a0-d0-0-0-0
attribute @s minecraft:generic.max_health modifier add a0-d0-0-0-0 "Debug_HP_Add" 100 add
title @s actionbar {"translate": "HP +100","color": "light_purple"}

# トリガー時の共通処理
    function debug:menu/page/status/hp/
