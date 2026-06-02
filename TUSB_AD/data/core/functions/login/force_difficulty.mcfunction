#> core:login/force_difficulty
#
#
#
# @within function core:tick/

#> Val
# @private
#declare score_holder $Difficulty

# 難易度を取得する
    execute store result score $Difficulty TUSB run difficulty
# ノーマル以下の場合の変更処理
    execute if score $Difficulty TUSB matches 0..2 run function core:login/warning
    execute if score $Difficulty TUSB matches 0..2 run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.FAILED"},{"text":"難易度をノーマル以下にすることは出来ません。"}]
    execute if score $Difficulty TUSB matches 0..2 run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.FAILED"},{"text":"難易度はハードに変更されました。"}]
    execute if score $Difficulty TUSB matches 0..2 run difficulty hard
# リセット
    scoreboard players reset $Difficulty TUSB