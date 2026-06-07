#> debug:menu/page/status/mp/500
#
# 
#
# @within function debug:menu/page/status/mp/

execute unless score @s Debug.MPMax matches -2147483648..2147483647 run function debug:menu/page/status/mp/seve

scoreboard players set @s MPMax 500
scoreboard players set @s MP 500

title @s actionbar {"translate": "Max MP 500","color": "aqua"}

function debug:menu/page/status/mp/
