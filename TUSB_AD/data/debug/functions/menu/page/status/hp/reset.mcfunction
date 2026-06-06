#> debug:menu/page/status/hp/reset
#
# 
#
# @within function debug:menu/page/status/hp/

attribute @s minecraft:generic.max_health modifier remove a0-d0-0-0-0

title @s actionbar {"translate": "HP Reset","color": "dark_red"}

effect give @s minecraft:instant_health 1 0

# トリガー時の共通処理
    function debug:menu/page/status/hp/
