#> mob_manager:skill/shinen/teleport
# 深淵様のスキル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"テレポート","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"64m以内の最も近いプレイヤーにテレポートする。","color":"red"}}}]}]
execute at @p[distance=..64] run tp @s ~ ~2 ~
