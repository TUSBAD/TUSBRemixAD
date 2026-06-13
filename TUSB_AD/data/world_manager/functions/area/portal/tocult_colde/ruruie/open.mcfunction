#> world_manager:area/portal/tocult_colde/ruruie/open
### ルルイエのワープ開放

data modify storage world: portal_name set value "ルルイエ"
data modify storage world: portal.tocult_colde.ruruie set value true
execute positioned 1294 96 1598 run function world_manager:area/portal/open
