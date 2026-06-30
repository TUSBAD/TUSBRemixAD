#> core:difficulty/init
#
# 難易度による変更部分を設定
#
# @within function core:difficulty/reset

# 　　　　　　　　　　　　　　　：ピクニック  ：カジュアル　：アナザー　　：ナイトメア  ：nbt              ：type
# 難易度　　　　　　　　　　　　：picnic     ：casual     ：another    ：nightmare  ：level            ：string
# テキスト表示名　　　　　　　　：           ：           ：           ：           ：text             ：json_text
# ネームプレート　　　　　　　　：           ：           ：           ：           ：name_plate       ：json_text
# レベルアップに必要な経験値　　：50         ：100        ：150        ：200        ：next_exp         ：int（百分率）
# 嫌な予感の強さの最大段階　　　：0          ：1          ：3          ：4          ：event_rank_max   ：int
# 嫌な予感までの時間範囲　　　　：36000-72000：18000-54000：18000-36000：6000-36000 ：event_time_range ：int（tick）
# キープインベントリ　　　　　　：true       ：true       ：false      ：false      ：is_keepinventory ：byte
# ボスの体力補正　　　　　　　　：100        ：100        ：150        ：200        ：health_add       ：int（百分率）
# マルチプレイ時のボス体力補正　：100        ：100        ：110        ：120        ：multi_health     ：int（百分率）
# 死の宣告　　　　　　　　　　　：60         ：20         ：20         ：20         ：doom             ：int（tick）
# 致死の宣告　　　　　　　　　　：false      ：true       ：true       ：true       ：doom_ex          ：byte
# 即死の宣告　　　　　　　　　　：false      ：false      ：true       ：true       ：death_doom       ：byte
# MPの自然回復速度　　         ：150        ：100        ：75         ：50         ：mp_healing_wait  ：int（百分率）

# ピクニック
    data modify storage core: difficult.picnic.level set value picnic
    data modify storage core: difficult.picnic.text set value "ピクニック"
    data modify storage core: difficult.picnic.color set value "#80ff00"
    data modify storage core: difficult.picnic.name_plate set value "✨"
    data modify storage core: difficult.picnic.next_exp set value 50
    data modify storage core: difficult.picnic.event_rank_max set value 0
    data modify storage core: difficult.picnic.event_time_range set value [36000,72000]
    data modify storage core: difficult.picnic.is_keepinventory set value true
    data modify storage core: difficult.picnic.health_add set value 100
    data modify storage core: difficult.picnic.multi_health set value 100
    data modify storage core: difficult.picnic.doom set value 60
    data modify storage core: difficult.picnic.doom_ex set value false
    data modify storage core: difficult.picnic.death_doom set value false
    data modify storage core: difficult.picnic.mp_healing_wait set value 150

# カジュアル
    data modify storage core: difficult.casual.level set value casual
    data modify storage core: difficult.casual.text set value "カジュアル"
    data modify storage core: difficult.casual.color set value "#FF2A2A"
    data modify storage core: difficult.casual.name_plate set value "✨"
    data modify storage core: difficult.casual.next_exp set value 100
    data modify storage core: difficult.casual.event_rank_max set value 1
    data modify storage core: difficult.casual.event_time_range set value [18000,54000]
    data modify storage core: difficult.casual.is_keepinventory set value true
    data modify storage core: difficult.casual.health_add set value 100
    data modify storage core: difficult.casual.multi_health set value 100
    data modify storage core: difficult.casual.doom set value 20
    data modify storage core: difficult.casual.doom_ex set value true
    data modify storage core: difficult.casual.death_doom set value false
    data modify storage core: difficult.casual.mp_healing_wait set value 100

# アナザー
    data modify storage core: difficult.another.level set value another
    data modify storage core: difficult.another.text set value "アナザー"
    data modify storage core: difficult.another.color set value "#ff00ff"
    data modify storage core: difficult.another.name_plate set value "✨"
    data modify storage core: difficult.another.next_exp set value 150
    data modify storage core: difficult.another.event_rank_max set value 3
    data modify storage core: difficult.another.event_time_range set value [18000,36000]
    data modify storage core: difficult.another.is_keepinventory set value false
    data modify storage core: difficult.another.health_add set value 150
    data modify storage core: difficult.another.multi_health set value 100
    data modify storage core: difficult.another.doom set value 20
    data modify storage core: difficult.another.doom_ex set value true
    data modify storage core: difficult.another.death_doom set value true
    data modify storage core: difficult.another.mp_healing_wait set value 75

# ナイトメア
    data modify storage core: difficult.nightmare.level set value nightmare
    data modify storage core: difficult.nightmare.text set value "ナイトメア"
    data modify storage core: difficult.nightmare.color set value "#2848ff"
    data modify storage core: difficult.nightmare.name_plate set value "✨"
    data modify storage core: difficult.nightmare.next_exp set value 200
    data modify storage core: difficult.nightmare.event_rank_max set value 4
    data modify storage core: difficult.nightmare.event_time_range set value [6000,36000]
    data modify storage core: difficult.nightmare.is_keepinventory set value false
    data modify storage core: difficult.nightmare.health_add set value 200
    data modify storage core: difficult.nightmare.multi_health set value 100
    data modify storage core: difficult.nightmare.doom set value 20
    data modify storage core: difficult.nightmare.doom_ex set value true
    data modify storage core: difficult.nightmare.death_doom set value true
    data modify storage core: difficult.nightmare.mp_healing_wait set value 50
