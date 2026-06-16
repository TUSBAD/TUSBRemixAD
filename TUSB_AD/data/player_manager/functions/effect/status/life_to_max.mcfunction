#> player_manager:effect/status/life_to_max
#
# HP全回復
#
# @within function player_manager:death/rise

function player_manager:effect/status/modify_max
scoreboard players operation @s MP = @s MPMax
effect give @s minecraft:instant_health 1 10
function job:mp/bar/set
