#> world_manager:area/portal/tocult_colde/excavation_lower/close
### 採掘場(下)のワープ閉じる

data modify storage world: portal_name set value "採掘場(下)"
data remove storage world: portal.tocult_colde.excavation_lower
execute positioned 1354 96 1538 run function world_manager:area/portal/close

### チャンク読み込み
setblock 2298 73 1414 minecraft:air
setblock 2298 73 1414 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
