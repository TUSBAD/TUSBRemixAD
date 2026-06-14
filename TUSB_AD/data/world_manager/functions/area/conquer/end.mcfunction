#> world_manager:area/conquer/end
# エンド攻略
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ UseEnderEye run data get storage world: conquer.count.end
execute store result storage world: conquer.count.end int 1 run scoreboard players add _ UseEnderEye 1
