#> debug:menu/page/trigger
#
# 
#
# @within function debug:menu/show

stopsound @s master minecraft:ui.button.click
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

function debug:menu/show
