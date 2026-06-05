#> debug:menu/page/status/mp/100
#
# 
#
# @within function debug:menu/page/status/mp/

execute unless score @s Debug.MPMax matches -2147483648..2147483647 run function debug:menu/page/status/mp/seve

scoreboard players set @s MPMax 100
scoreboard players set @s MP 100

title @s actionbar {"translate": "Max MP 100","color": "aqua"}

function debug:menu/page/status/mp/
