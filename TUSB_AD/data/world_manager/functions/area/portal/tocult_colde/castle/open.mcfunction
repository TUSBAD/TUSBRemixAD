#> world_manager:area/portal/tocult_colde/castle/open
### トカルト城のワープ開放

data modify storage world: portal_name set value "トカルト城"
data modify storage world: portal.tocult_colde.castle set value true
execute positioned 1278 96 1582 run function world_manager:area/portal/open
