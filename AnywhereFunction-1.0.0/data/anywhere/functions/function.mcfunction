#> anywhere:function
# 座標と対象を変更してファンクションを実行する
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage anywhere: {as_entity:true} positioned as @s rotated as @s run function anywhere:run_as

execute if data storage anywhere: {as_entity:true} positioned as @s rotated as @s as @e[tag=AnywhereAs] run function anywhere:run_as
