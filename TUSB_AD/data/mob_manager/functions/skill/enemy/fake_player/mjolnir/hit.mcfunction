#> mob_manager:skill/enemy/fake_player/mjolnir/hit
#
# hit処理
#
# @within function mob_manager:skill/enemy/fake_player/mjolnir/tick

# ダメージを与える
function score_damage:api/attack

data modify storage tusb_remake: hit set value true
