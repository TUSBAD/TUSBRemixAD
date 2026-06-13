#> job:set_display/show/
# スキル名称の表示
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 前に・をつける
data modify storage skill: prefix set value '{"text":"・"}'

### 表示
function job:set_display/show/display
