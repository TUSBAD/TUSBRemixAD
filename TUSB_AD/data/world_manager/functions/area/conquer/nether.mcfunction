#> world_manager:area/conquer/nether
# ネザー攻略
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ UseEnderEye run data get storage world: conquer.count.nether
execute store result storage world: conquer.count.nether int 1 run scoreboard players add _ UseEnderEye 1
