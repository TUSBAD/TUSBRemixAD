#> mob_manager:entity/freeze_clear
#
# フリーズ解除
#
# @within function mob_manager:one_second

# Freeze/Melt 居縮
data modify entity @s NoAI set value false
tag @s remove Freeze