#> mob_manager:custom_mob/health/log/show
#
# text_displayの表示
#
# @within function mob_manager:custom_mob/health/log/summon/damage
#         function mob_manager:custom_mob/health/log/summon/heal

# textにセット
    data modify entity @s text set from block 3500 0 3500 Items[0].tag.display.Name

# 8つのうちどこかに出現
    data modify storage math: in set value [1,8]
    function api:dice/score

    execute if score @s Random matches 1 run tp @s ~0.3 ~1.7 ~0.3
    execute if score @s Random matches 2 run tp @s ~0.3 ~1.7 ~-0.3
    execute if score @s Random matches 3 run tp @s ~-0.3 ~1.7 ~0.3
    execute if score @s Random matches 4 run tp @s ~-0.3 ~1.7 ~-0.3
    execute if score @s Random matches 5 run tp @s ~0.3 ~1.9 ~
    execute if score @s Random matches 6 run tp @s ~ ~1.9 ~-0.3
    execute if score @s Random matches 7 run tp @s ~-0.3 ~1.9 ~
    execute if score @s Random matches 8 run tp @s ~ ~1.9 ~-0.3

# リセット
    scoreboard players reset @s Random
