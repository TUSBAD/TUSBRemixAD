#> world_manager:area/portal/tocult_colde/frontier/close
### 辺境のワープ閉じる

data modify storage world: portal_name set value "辺境"
data remove storage world: portal.tocult_colde.frontier
execute positioned 1341 215 1558 run function world_manager:area/portal/close

### チャンク読み込み
setblock 1324 96 1573 minecraft:air
setblock 1324 96 1573 minecraft:oak_sign[rotation=0]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
