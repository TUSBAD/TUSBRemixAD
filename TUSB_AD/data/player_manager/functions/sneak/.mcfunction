#> player_manager:sneak/
#
# remakeのスニーク処理はよくわからんので新設
#
#

#スニーク中   スニークしているときに実行したい処理はこの下に追加
execute if score @s SneakingTime matches 3 run scoreboard players add @s SneakTrigger 1
# スニーク頻度
execute if score @s SneakingTime matches 1 run scoreboard players add @s SneakFrequency 10

#スニーク解除   スニークし終わったときに実行したい処理はこの下に追加
execute if score @s SneakingTime matches ..2 run scoreboard players reset @s SneakTrigger

# スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakingTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakingTime %= _ _