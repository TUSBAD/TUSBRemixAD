#> core:settings/too_bad_effects
#
#> 特殊デバフの名前と説明の初期設定
#
#@within function core:load/once_add

#> 特殊デバフの名前を使用するとき。
#
#
# 使用例
# {"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Doom"}
#

data modify storage player: BadEffectsName.Doom set value '{"translate":"死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"一定時間経過後、死亡する。","color":"white"}},"color":"#d159ff"}'
data modify storage player: BadEffectsName.DoomEX set value '{"translate":"致死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"解除するまで、ダメージを受け続ける。","color":"white"}},"color":"#d309ff"}'
data modify storage player: BadEffectsName.ManaErosion set value '{"translate":"魔力浸食","hoverEvent":{"action":"show_text","value":{"translate":"解除するまで、MPが減少し続ける。","color":"white"}},"color":"#6b1ae6"}'
data modify storage player: BadEffectsName.DeathDoom set value '{"translate":"即死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"1分後に、必ず死に至る。","color":"white"}},"color":"#df2f20"}'
data modify storage player: BadEffectsName.Poison set value '{"translate":"致死毒","hoverEvent":{"action":"show_text","value":{"translate":"敵が特定スキルを詠唱時、死に至る。","color":"white"}},"color":"#00d000"}'
