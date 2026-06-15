#> job:player_tick
#
# 職業関係プレイヤーtick
#
# @within function player_manager:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function job:player_one_second

# 幸運によるMP補正
execute store result score _ Luck run attribute @s generic.minecraft:luck get 10
execute unless score _ Luck = @s Luck run function job:luck_update

# MP回復
function job:mp_regen/