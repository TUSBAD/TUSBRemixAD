#> mob_manager:skill/enemy/fake_player/mjolnir/tick
#
# tick処理
#
# @within function mob_manager:skill/enemy/fake_player/mjolnir/

data modify storage tusb_remake: _ set value false
data modify storage score_damage: Argument set value {Damage:2000.00}
execute as @e[type=falling_block,tag=Mjolnir] at @s run function mob_manager:skill/enemy/fake_player/mjolnir/fly

execute if data storage tusb_remake: {_:true} run schedule function mob_manager:skill/enemy/fake_player/mjolnir/tick 1t
