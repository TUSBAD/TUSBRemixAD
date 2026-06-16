#> world_manager:area/portal/tocult_colde/excavation_lower/open
### 採掘場(下)のワープ開放

data modify storage world: portal_name set value "採掘場(下)"
data modify storage world: portal.tocult_colde.excavation_lower set value true
execute positioned 1354 96 1538 run function world_manager:area/portal/open
