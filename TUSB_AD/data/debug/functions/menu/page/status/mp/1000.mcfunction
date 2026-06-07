#> debug:menu/page/status/mp/1000
#
# 
#
# @within function debug:menu/page/status/mp/

execute unless score @s Debug.MPMax matches -2147483648..2147483647 run function debug:menu/page/status/mp/seve

scoreboard players set @s MPMax 1000
scoreboard players set @s MP 1000

title @s actionbar {"translate": "Max MP 1000","color": "aqua"}

function debug:menu/page/status/mp/
