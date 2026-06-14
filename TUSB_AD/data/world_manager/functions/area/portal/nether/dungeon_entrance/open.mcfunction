#> world_manager:area/portal/nether/dungeon_entrance/open
# 煉獄 入り口のワープ開放
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage world: portal_name set value "煉獄 入り口"
data modify storage world: portal.table_mountain.happy_city set value true
execute positioned 12 15 -76 run function world_manager:area/portal/open
