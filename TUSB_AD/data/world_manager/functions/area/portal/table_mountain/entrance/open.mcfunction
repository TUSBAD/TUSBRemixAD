#> world_manager:area/portal/table_mountain/entrance/open
### テーブルマウンテン入口のワープ開放

data modify storage world: portal_name set value "テーブルマウンテン入口"
data modify storage world: portal.table_mountain.happy_city set value true
execute positioned 30 15 -1849 run function world_manager:area/portal/open
