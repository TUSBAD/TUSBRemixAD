#> core:difficulty/select/debug
#
#> 難易度適用
#
#
execute if data storage core: difficult{world:"debug"} run tellraw @a {"translate":"この難易度を選択中です。"}

execute unless data storage core: difficult{world:"debug"} run function core:difficulty/apply/debug

# テキストディスプレイを難易度の色に染める
# data modify entity @e[type=text_display,tag=DifficultSelect,distance=..20,limit=1] background set value -402707926

# 難易度選択時の共通処理
#function core:difficulty/select/common

#advancement revoke @s only core:difficulty/select/casual
