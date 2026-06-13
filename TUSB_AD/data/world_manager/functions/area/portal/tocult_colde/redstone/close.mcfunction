#> world_manager:area/portal/tocult_colde/redstone/close
### 古代遺跡　調査コードRSのワープ閉じる

data modify storage world: portal_name set value "古代遺跡　調査コードRS"
data remove storage world: portal.tocult_colde.redstone
execute positioned 1278 96 1538 run function world_manager:area/portal/close

### チャンク読み込み
setblock 1161 96 1496 minecraft:air
setblock 1161 96 1496 minecraft:oak_sign[rotation=12]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
