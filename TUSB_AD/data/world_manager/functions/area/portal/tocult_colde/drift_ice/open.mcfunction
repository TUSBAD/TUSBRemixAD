#> world_manager:area/portal/tocult_colde/drift_ice/open
### 流氷のワープ開放

data modify storage world: portal_name set value "流氷"
data modify storage world: portal.tocult_colde.drift_ice set value true
execute positioned 1354 96 1582 run function world_manager:area/portal/open
