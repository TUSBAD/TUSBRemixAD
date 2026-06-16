#> world_manager:area/portal/underworld/hill/open
### 地下キノコの山のワープ開放

data modify storage world: portal_name set value "地下キノコの山"
data modify storage world: portal.underworld.hill set value true
execute positioned 888 16 -215 run function world_manager:area/portal/open
