#> world_manager:area/portal/tocult_colde/research_site/open
### 調査拠点跡地のワープ開放

data modify storage world: portal_name set value "調査拠点跡地"
data modify storage world: portal.tocult_colde.research_site set value true
execute positioned 1338 96 1522 run function world_manager:area/portal/open
