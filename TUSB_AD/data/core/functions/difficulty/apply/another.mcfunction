#> core:difficulty/apply/another
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：アナザー

#> チーム色変更
execute unless data storage core: difficult{world:"another"} run function core:difficulty/color/another

data modify storage core: difficult.before set from storage core: difficult.world
data modify storage core: difficult.world set value "another"

scoreboard players set $Difficulty Difficulty 4
#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
data modify storage core: settings.is_keepinventory set value false

#> チャット表示
tellraw @a [{"storage":"core:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"アナザー","color":"#FF00FF"}]}]
execute as @a at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 0 1

#> 変更点
# 死の宣告：1秒毎
# 致死の宣告：追加
# 即死の宣告：追加
# MP回復速度：減少
# 予感間隔：15分~30分
# 予感内容：攻略数変化(一定段階まで)
# 必要経験値量：増加