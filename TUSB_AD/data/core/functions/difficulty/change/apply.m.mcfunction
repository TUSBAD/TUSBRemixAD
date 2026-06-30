#> core:difficulty/change/apply.m
#
# マクロで難易度を適用
#
# @within function core:difficulty/change/adopt

# ワールドに適用
    $data modify storage core: difficult.world set from storage core: difficult.$(level)

# チーム色変更
    $team modify FriendlyTeam suffix $(name_plate)
    $team modify FriendlyTeam prefix $(name_plate)

# チャット表示
    $tellraw @a [{"storage":"core:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[$(text)]}]

# 共通処理
    # 選択用エンティティ召喚不可
        data modify storage core: difficult.selecting set value true

    # 難易度選択済み
    # ハードコア選択不可用フラグ
        data modify storage core: difficult.selected set value true

    # 職業島の選択用エンティティを削除
    # テキストディスプレイはちょっと演出付き
        data merge entity @e[type=text_display,tag=DifficultSelect,distance=..20,limit=1] {transformation:{translation:[12f,-9f,0f],scale:[0.1f,0.1f,0.1f]},start_interpolation:2,}
        schedule function core:difficulty/select/end 13t replace

    # 難易度変更演出
        playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 0.75

# リセット
    data remove storage core: difficult.world.change
