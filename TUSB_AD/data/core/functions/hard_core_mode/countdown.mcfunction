#> core:hard_core_mode/countdown
#
#
#
# @within function core:hard_core_mode/settings

execute as @a at @s run playsound block.metal_pressure_plate.click_on player @s ~ ~ ~ 10 2
title @a actionbar [{"text":"< ","color":"green","bold":true},{"nbt":"count_down_time","storage":"core:","color":"#ff2a2a","bold":false,"italic":false},{"text":"秒","color":"gold","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false}]

# 60秒間ループ
execute store result storage core: count_down_time int 1 run data get storage core: count_down_time 0.9999999999
# 止まるまで繰り返し
execute unless data storage core: {count_down_time:0} in minecraft:overworld run schedule function core:hard_core_mode/countdown 1s