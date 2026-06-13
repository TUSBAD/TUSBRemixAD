#> world_manager:area/portal/tocult_colde/frontier/open
### 辺境のワープ開放

data modify storage world: portal_name set value "辺境"
data modify storage world: portal.tocult_colde.frontier set value true
execute positioned 1341 215 1558 run function world_manager:area/portal/open
