#> core:load/
# リロード時リセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### システムマーカーが何で動かされたか分からないので、ロード時に初期位置にずらす
execute in minecraft:overworld run tp 0-0-1-0-1 -1919.5 6.5 -191.5


### Const 今回は使いたくない！！
data modify storage player: Const.ExpMul set value 5

### スコアが存在していなかったら初期化する
scoreboard objectives add Count dummy {"text":"カウント"}
execute unless score $Ticks Count matches 0.. run function core:load/once
execute unless score $Ticks Count matches 0.. run function core:load/gamerule

### ブロックに対する設定を予約
execute in minecraft:overworld run schedule function core:load/block_settings 3s

### １秒タイマーをスケジュール
execute in minecraft:overworld run schedule function core:clock/sec 1s
execute in minecraft:overworld run schedule function core:clock/half_sec 10t

### アップデートを確認
# デバッグモードなら実行しない
# execute if score Debug Settings matches 0 unless data storage core: {settings:{version:"2.0.0"}} run function core:load/update/
