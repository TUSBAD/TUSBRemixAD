#> debug:menu/page/status/mp/10000
#
# 
#
# @within function debug:menu/page/status/mp/

execute unless score @s Debug.MPMax matches -2147483648..2147483647 run function debug:menu/page/status/mp/seve

scoreboard players set @s MPMax 10000
scoreboard players set @s MP 10000

title @s actionbar {"translate": "Max MP 10000","color": "aqua"}

function debug:menu/page/status/mp/
