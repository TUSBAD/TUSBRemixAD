#> item:anvil/interact
#
#砥石をコマブロに置換してUI無効化する
#
#1tick遅らせる
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 .61 1
schedule function item:anvil/schedule 1t
#tag @s add InteractAnvil
#トリガー解除
advancement revoke @s only item:interact/anvil
