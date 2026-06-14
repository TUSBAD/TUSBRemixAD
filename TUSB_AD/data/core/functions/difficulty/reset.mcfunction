#> core:difficulty/reset
#
# デフォルト難易度に設定
#
#@internal funciton difficulty:*

#> 色の変更及び設定の適用
function core:difficulty/apply/casual
function core:difficulty/color/casual
#> 初期化
data remove storage core: difficult
schedule function core:difficulty/select/end 1t replace