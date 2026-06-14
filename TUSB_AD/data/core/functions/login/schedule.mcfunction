#> core:login/schedule
# ログイン時にエラーがない場合の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もし職業があれば、現在のスキル設定を表示
execute as @a[tag=LoginMessage,scores={Job=1..}] run function player_manager:show_text/skill
### 現在の難易度を表示
### TODO:難易度部分をクリックしたら難易度の詳細を表示するようにしたい。
execute if data storage core: difficult{world:"picnic"} run tellraw @a[tag=LoginMessage] [{"storage":"core:","nbt":"Prefix.INFO","bold": true},{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult{world:"casual"} run tellraw @a[tag=LoginMessage] [{"storage":"core:","nbt":"Prefix.INFO","bold": true},{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult{world:"another"} run tellraw @a[tag=LoginMessage] [{"storage":"core:","nbt":"Prefix.INFO","bold": true},{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult{world:"hardcore"} run tellraw @a[tag=LoginMessage] [{"storage":"core:","nbt":"Prefix.INFO","bold": true},{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#a600ff"}]
execute if data storage core: difficult{world:"nightmare"} run tellraw @a[tag=LoginMessage] [{"storage":"core:","nbt":"Prefix.INFO","bold": true},{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#2848ff"}]
### 祈りが表示できれば表示
tag @a[tag=LoginMessage] add Pray

tag @a[tag=LoginMessage] remove LoginMessage
