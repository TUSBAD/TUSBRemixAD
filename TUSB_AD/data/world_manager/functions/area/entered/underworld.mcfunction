#> world_manager:entered/underworld
### 地下世界諸設定

# トリガー解除
advancement revoke @s only world_manager:entered/underworld
# 設定反映
function settings:area/underworld
function world_manager:entered/
# 演出表示
function makeup:area/entered/underworld