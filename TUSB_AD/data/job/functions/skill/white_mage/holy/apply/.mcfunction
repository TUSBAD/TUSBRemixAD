#> job:skill/white_mage/holy/apply/
### 雪玉をホーリーにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=0,type=snowball,limit=1] run function job:skill/white_mage/holy/apply/snowball

# 発射時攻撃判定
execute as @e[distance=..8,type=#lib:mob,tag=Enemy] unless predicate job:is_saturation at @s run function job:skill/white_mage/holy/schedule/hit

### ホーリーの演出有効化
function job:skill/white_mage/holy/schedule/

### 飛んでるやつの判定有効化
function job:trigger/projectile/
