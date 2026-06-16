#> job:init_table/job
#
# 職業のセット
#
# @within function job:init_table/

# リセット
data remove storage job: Data

# 職ごとにセット
# 剣士
data modify storage job: Data.Knight append value "剣士"
data modify storage job: Data.Knight append value "§4栄誉騎士"
data modify storage job: Data.Knight append value "§l§4栄誉騎士 §6マスターランク"

# 忍者
data modify storage job: Data.Ninja append value "忍者"
data modify storage job: Data.Ninja append value "§2隠密"
data modify storage job: Data.Ninja append value "§l§2隠密 §6マスターランク"

# 狩人
data modify storage job: Data.Archer append value "狩人"
data modify storage job: Data.Archer append value "§d狙撃手"
data modify storage job: Data.Archer append value "§l§d狙撃手 §6マスターランク"

# 白魔
data modify storage job: Data.WhiteMage append value "白魔導士"
data modify storage job: Data.WhiteMage append value "§7大賢者"
data modify storage job: Data.WhiteMage append value "§l§7大賢者 §6マスターランク"

# 黒魔
data modify storage job: Data.BlackMage append value "黒魔導士"
data modify storage job: Data.BlackMage append value "§5大魔導士"
data modify storage job: Data.BlackMage append value "§l§5大魔導士 §6マスターランク"

# 召喚士
data modify storage job: Data.Summoner append value "召喚士"
data modify storage job: Data.Summoner append value "§e錬金術師"
data modify storage job: Data.Summoner append value "§l§e錬金術師 §6マスターランク"

# 槍術師
data modify storage job: Data.Lancer append value "槍術師"
data modify storage job: Data.Lancer append value "§b槍術師+"
data modify storage job: Data.Lancer append value "§l§b槍術師+ §6マスターランク"

# 創成術師
data modify storage job: Data.Lancer append value "創成術師"
data modify storage job: Data.Lancer append value "§a創成術師+"
data modify storage job: Data.Lancer append value "§l§a創成術師+ §6マスターランク"
