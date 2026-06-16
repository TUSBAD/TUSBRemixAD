#> mob_manager:skill/enemy/fake_player/mjolnir/fly
#
# 判定処理
#
# @within function mob_manager:skill/magic/yggdrasil/mjolnir/

data modify storage mob: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @a[dy=0] unless predicate job:is_saturation at @s run function mob_manager:skill/enemy/fake_player/mjolnir/hit

# 当たっていたらタライを消す
execute if data storage mob: {hit:true} run kill @s

data modify storage mob: _ set value true
