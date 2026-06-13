#> world_manager:area/portal/tocult_colde/sumful/open
### スムフルのワープ開放

data modify storage world: portal_name set value "スムフル"
data modify storage world: portal.tocult_colde.sumful set value true
execute positioned 1338 96 1598 run function world_manager:area/portal/open
