#> job:init_table/job
#
# 職業のセット
#
# @within function job:init_table/

# リセット
data remove storage job: Data

# 職ごとにセット
# 剣士
data modify storage job: Data.Knight append value "ウォーリアー"
data modify storage job: Data.Knight append value "§4ナイトエンペラー"
data modify storage job: Data.Knight append value "§l§4エンパイアソード"

# 忍者
data modify storage job: Data.Ninja append value "アサシン"
data modify storage job: Data.Ninja append value "§2シュラ"
data modify storage job: Data.Ninja append value "§l§2アプサラス"

# 槍術師
data modify storage job: Data.Lancer append value "ランサー"
data modify storage job: Data.Lancer append value "§bリヒター"
data modify storage job: Data.Lancer append value "§l§bイノセント"

# 狩人
data modify storage job: Data.Archer append value "スナイパー"
data modify storage job: Data.Archer append value "§dデッドリーチェイサー"
data modify storage job: Data.Archer append value "§l§dデイブレイカー"

# 白魔
data modify storage job: Data.WhiteMage append value "プリースト"
data modify storage job: Data.WhiteMage append value "§7エレメンタリスト"
data modify storage job: Data.WhiteMage append value "§l§7エーテルセージ"

# 黒魔
data modify storage job: Data.BlackMage append value "ソーサラー"
data modify storage job: Data.BlackMage append value "§5ウィザード"
data modify storage job: Data.BlackMage append value "§l§5オズソーサラー"

# 召喚士
data modify storage job: Data.Summoner append value "サモナー"
data modify storage job: Data.Summoner append value "§eドレッドロード"
data modify storage job: Data.Summoner append value "§l§eカタストロフィー"

# 創成術師
data modify storage job: Data.Lancer append value "アルケミスト"
data modify storage job: Data.Lancer append value "§aセレスティア"
data modify storage job: Data.Lancer append value "§l§aロードアゾット"
