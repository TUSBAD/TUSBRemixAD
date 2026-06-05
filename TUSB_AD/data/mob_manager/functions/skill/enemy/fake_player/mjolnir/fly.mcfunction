#> mob_manager:skill/enemy/fake_player/mjolnir/fly
#
# 判定処理
#
# @within function mob_manager:skill/magic/yggdrasil/mjolnir/

data modify storage tusb_remake: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @a[dy=0,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function mob_manager:skill/enemy/fake_player/mjolnir/hit

# 当たっていたらタライを消す
execute if data storage tusb_remake: {hit:true} run kill @s

data modify storage tusb_remake: _ set value true
