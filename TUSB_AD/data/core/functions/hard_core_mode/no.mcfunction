#> core:hard_core_mode/no
# ハードコア拒否ぃ


tellraw @a [{"storage":"core:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sへの変更をキャンセルしました。","with":[{"translate":"ハードコア","color":"#a600ff"}]}]
schedule clear core:hard_core_mode/start
schedule clear core:hard_core_mode/countdown
scoreboard players set @s hcmode 0
function core:difficulty/apply/casual
