#> world_manager:area/portal/cloudia/hello_work/open
### 職業島へのワープ開放

data modify storage world: portal_name set value "職業島"
data modify storage world: portal.cloudia.hello_work set value true
execute positioned -2383 77 -157 run function world_manager:area/portal/open
