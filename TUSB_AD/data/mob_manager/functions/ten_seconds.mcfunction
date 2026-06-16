#> mob_manager:ten_seconds
#
# モブ10秒処理
#
# @within function mob_manager:one_second

# -> 1分処理
## 使用するときにコメントアウトを外してください。
execute if score #TenSeconds Count matches 0 run function mob_manager:one_minute

# 個人ロッカー(印板)から音
execute at @e[tag=PersonalLockerSign] run playsound minecraft:block.beacon.ambient block @a[distance=..16]

# 奈落介錯
execute as @e[type=!player] if predicate lib:in_void run tag @s add Garbage