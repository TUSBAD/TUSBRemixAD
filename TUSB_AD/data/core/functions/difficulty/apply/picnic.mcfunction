#> core:difficulty/apply/picnic
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：ピクニック

#> チーム色変更
execute unless data storage tusb: difficult{world:"picnic"} run function core:difficulty/color/picnic

data modify storage tusb_remake: difficult.before set from storage tusb_remake: difficult.world
data modify storage tusb_remake: difficult.world set value "picnic"

#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
gamerule keepInventory true

#> チャット表示
tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"ピクニック","color":"#80ff00"}]}]
execute as @a at @s run playsound minecraft:xp_chime master @s ~ ~ ~ 1 0.5 1

#> 変更点
# 死の宣告：3秒毎
# MP回復速度：増加
# 予感間隔：30分~60分
# 予感内容：固定
# 必要経験値量：減少