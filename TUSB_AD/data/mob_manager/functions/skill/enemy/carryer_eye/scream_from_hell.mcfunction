#> mob_manager:skill/enemy/carryer_eye/scream_from_hell
#
# スクリームフロムヘル
#
# @within function mob_manager:skill/enemy/carryer_eye/

me は §4§lスクリームフロムヘル§r を唱えた！

# MPがおわり
scoreboard players operation @a[distance=..64] MP /= #10 Const

scoreboard players set @a[distance=..64] MPMaxFlag 0
