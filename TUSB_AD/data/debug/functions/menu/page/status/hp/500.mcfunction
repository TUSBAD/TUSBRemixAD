#> debug:menu/page/status/hp/500
#
# 
#
# @within function debug:menu/page/status/hp/

attribute @s minecraft:generic.max_health modifier remove a0-d0-0-0-0
attribute @s minecraft:generic.max_health modifier add a0-d0-0-0-0 "Debug_HP_Add" 500 add
title @s actionbar {"translate": "HP +500","color": "light_purple"}

# トリガー時の共通処理
    function debug:menu/page/status/hp/
