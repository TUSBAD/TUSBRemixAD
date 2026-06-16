#> world_manager:entered/test
### デバッグエリア諸設定

# トリガー解除
advancement revoke @s only world_manager:entered/test
# 設定反映
function settings:area/test
function world_manager:entered/
# 演出表示
function makeup:area/entered/test