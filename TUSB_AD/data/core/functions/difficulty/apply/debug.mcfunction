#> core:difficulty/apply/debug
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：デバッグ

#> チーム色変更
function core:difficulty/color/debug

data modify storage core: difficult.before set from storage core: difficult.world
data modify storage core: difficult.world set value "debug"

#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
gamerule keepInventory true

#> チャット表示
tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.DEBUG"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"デバッグ","color":"#808080"}]}]
execute as @a at @s run playsound minecraft:entity.villager.work_toolsmith master @s ~ ~ ~ 1 1 1
