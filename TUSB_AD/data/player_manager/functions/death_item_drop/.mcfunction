#> player_manager:death_item_drop/
#
#
#
# @within function player_manager:death/

# レイズなら中断
    execute if entity @s[tag=Raise] run return 0

# アナザー～ナイトメア
    execute if entity @s[tag=!Curse] run return run function player_manager:death_item_drop/do
