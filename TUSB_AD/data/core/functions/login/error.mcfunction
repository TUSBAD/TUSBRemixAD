#> core:login/error
# ログイン時に初期化エラーがあれば知らせる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 初期化済みなのに、スコアが消えているなら、プレイヤー名が変わっているので、お知らせする
function core:error/warning
tellraw @a ""
tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.CRIT"},{"translate":"[INFO]\n プレイヤー名の変更を検知しました。ステータスが引き継がれていません。\n以下のページを参考にワールドデータのスコアボードファイルを修正してください。"}]
tellraw @a ""
tellraw @a {"translate":"https://ai-akaishi.hatenablog.jp/entry/ar970627","underlined":true,"clickEvent":{"action":"open_url","value":"https://ai-akaishi.hatenablog.jp/entry/ar970627"}}
tellraw @a ""
tellraw @a {"translate":"修正が必要なプレイヤー : %1$s","with":[{"selector":"@s"}]}
