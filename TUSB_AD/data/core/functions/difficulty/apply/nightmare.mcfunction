#> core:difficulty/apply/nightmare
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：ナイトメア

#> チーム色変更
execute unless data storage tusb_remake: difficult{world:"nightmare"} run function core:difficulty/color/nightmare

data modify storage tusb_remake: difficult.before set from storage tusb_remake: difficult.world
data modify storage tusb_remake: difficult.world set value "nightmare"

scoreboard players set #Difficulty Difficulty 4
#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
data modify storage tusb_remake: settings.is_keepinventory set value false

#> チャット表示
tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"ナイトメア","color":"#2848ff"}]}]
execute as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1 1

#> 変更点
# 死の宣告：1秒毎/5カウント
# 致死の宣告：10カウント
# 即死の宣告：30カウント
# MP回復速度：減少
# 予感間隔：5分~30分
# 予感内容：攻略数変化(最終段階まで)
# 必要経験値量：増加