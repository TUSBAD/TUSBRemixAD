#> world_manager:area/portal/cloudia/castle/open
### クラウディア城へのワープ開放

data modify storage world: portal_name set value "クラウディア城"
data modify storage world: portal.cloudia.castle set value true
execute positioned -2479 3 -129 run function world_manager:area/portal/open
