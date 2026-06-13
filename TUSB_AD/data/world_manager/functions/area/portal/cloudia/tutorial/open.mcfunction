#> world_manager:area/portal/cloudia/tutorial/open
### チュートリアルのワープ開放

data modify storage world: portal_name set value "クラウディア チュートリアル"
data modify storage world: portal.cloudia.tutorial set value true
execute positioned -1886 113 -195 run function world_manager:area/portal/open
