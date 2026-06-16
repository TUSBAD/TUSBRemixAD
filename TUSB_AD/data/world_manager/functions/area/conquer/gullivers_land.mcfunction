#> world_manager:area/conquer/gullivers_land
# ガリバーランド攻略
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ UseEnderEye run data get storage world: conquer.count.gullivers_land
execute store result storage world: conquer.count.gullivers_land int 1 run scoreboard players add _ UseEnderEye 1
