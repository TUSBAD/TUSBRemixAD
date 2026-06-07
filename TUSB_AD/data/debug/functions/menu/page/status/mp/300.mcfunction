#> debug:menu/page/status/mp/300
#
# 
#
# @within function debug:menu/page/status/mp/

execute unless score @s Debug.MPMax matches 1.. run function debug:menu/page/status/mp/seve

scoreboard players set @s MPMax 300
scoreboard players set @s MP 300

title @s actionbar {"translate": "Max MP 300","color": "aqua"}

function debug:menu/page/status/mp/
