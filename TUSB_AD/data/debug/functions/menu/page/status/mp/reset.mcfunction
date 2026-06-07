#> debug:menu/page/status/mp/reset
#
# 
#
# @within function debug:menu/page/status/mp/

execute if score @s Debug.MPMax matches -2147483648..2147483647 run function debug:menu/page/status/mp/load

title @s actionbar {"translate": "MP Reset","color": "dark_red"}

function debug:menu/page/status/mp/
