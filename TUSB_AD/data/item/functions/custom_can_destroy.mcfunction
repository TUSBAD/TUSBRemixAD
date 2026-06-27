#> item:custom_can_destroy
#
# Adv破壊可能設定
#
#

###メインハンドの道具にAdv破壊適性を設定
data modify storage item: Item set from entity @s SelectedItem
# アイテム更新 HideFlags 他のフラグは無視
data modify storage item: Item.tag.CanDestroy set value ["#item:can_break"]
data modify storage item: Item.tag.HideFlags set value 8
data modify storage item: Item.tag.CustomCanDestroy set value 1b
data modify storage item: Item.tag.display.Lore append value '{"translate":"アドベンチャーエリアで特定のブロックを破壊可能","italic":false,"color":"gray"}'
item modify entity @s weapon.mainhand item:storage/item
# トリガー解除
advancement revoke @s only item:can_break
