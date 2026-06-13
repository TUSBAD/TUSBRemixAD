#> core:difficulty/apply/casual
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：カジュアル
# デフォルト

#> チーム色変更
execute unless data storage core: difficult{world:"casual"} run function core:difficulty/color/casual

data modify storage core: difficult.before set from storage core: difficult.world
data modify storage core: difficult.world set value "casual"

scoreboard players set $Difficulty Difficulty 3
#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
data modify storage core: settings.is_keepinventory set value true

#> チャット表示
tellraw @a [{"storage":"core:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"カジュアル","color":"#ff2A2A"}]}]
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1 1

#> 変更点
# 死の宣告：3秒毎→1秒毎
# MP回復速度：通常
# 予感間隔：15分~45分
# 予感内容：ディメンション毎固定
# 必要経験値量：通常