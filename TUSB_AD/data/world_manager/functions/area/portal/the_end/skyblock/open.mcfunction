#> world_manager:area/portal/the_end/skyblock/open
### THE UNUSUAL SKYBLOCKのワープ開放

data modify storage world: portal_name set value "THE UNUSUAL SKYBLOCK"
data modify storage world: portal.the_end.skyblock set value true
execute positioned -1186 69 8 run function world_manager:area/portal/open
