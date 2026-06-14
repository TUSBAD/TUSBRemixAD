#> world_manager:area/portal/table_mountain/happy_city/open
### 幸福街のワープ開放

data modify storage world: portal_name set value "幸福街"
data modify storage world: portal.table_mountain.happy_city set value true
execute positioned 55 54 -2190 run function world_manager:area/portal/open
