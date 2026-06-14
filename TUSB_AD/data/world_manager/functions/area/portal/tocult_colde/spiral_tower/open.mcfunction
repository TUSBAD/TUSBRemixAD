#> world_manager:area/portal/tocult_colde/spiral_tower/open
### 螺旋の塔のワープ開放

data modify storage world: portal_name set value "螺旋の塔"
data modify storage world: portal.tocult_colde.spiral_tower set value true
execute positioned 1359 96 1560 run function world_manager:area/portal/open
