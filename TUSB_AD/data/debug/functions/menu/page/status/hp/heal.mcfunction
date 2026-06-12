#> debug:menu/page/status/hp/heal
#
# 
#
# @within function debug:menu/page/status/hp/

effect give @s minecraft:instant_health 1 25

title @s actionbar {"translate": "HP heal","color": "green"}

# トリガー時の共通処理
    function debug:menu/page/status/hp/
