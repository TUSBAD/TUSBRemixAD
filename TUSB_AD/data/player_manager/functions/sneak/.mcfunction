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

# 近くに墓がある場合、墓からものを取り出す
    execute if entity @s[scores={LiveTime=1..},predicate=player_manager:player] if score @s SneakingTime matches 3 as @e[type=item_display,tag=Tomb,distance=..1] at @s run function player_manager:death_item_drop/tomb_drop

# スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakingTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakingTime %= _ _