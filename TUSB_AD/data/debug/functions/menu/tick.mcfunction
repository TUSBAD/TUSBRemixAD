#> debug:menu/tick
#
# 
#
# @within function debug:menu/show

execute if data storage debug: Debug{Mode:-1s} if score @s ShowMenu matches 0 run function debug:menu/show

##トリガーリセット
scoreboard players set @s ShowMenu -1
scoreboard players enable @s ShowMenu
