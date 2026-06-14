#> core:difficulty/apply/hardcore
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：ハードコア

#> チーム色変更
execute unless data storage core: difficult{world:"hardcore"} run function core:difficulty/color/hardcore

data modify storage core: difficult.before set from storage core: difficult.world
data modify storage core: difficult.world set value "hardcore"

scoreboard players set #Difficulty Difficulty 3
#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
data modify storage core: settings.is_keepinventory set value false

#> チャット表示
tellraw @a [{"storage":"core:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"ハードコア","color":"#a600ff","bold":true}],"bold":true,"color":"#e8383d"}]
execute as @a at @s run playsound minecraft:ambient.basalt_deltas.twist_4 master @s ~ ~ ~ 1 1 1

#> 変更点
# 礎難易度はカジュアルのまま、ハードコアモードをオンにする。