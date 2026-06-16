#> core:difficulty/change/reject
#
#
#
# @within function core:difficulty/change/adept

#> 難易度変更否決
execute if data storage core: difficult.change_to run tellraw @a ["",{"translate":"難易度変更は否決されました。","color":"red"}]

data remove storage core: difficult.change_to
scoreboard players reset #World ChangeDifficulty
scoreboard players set @s ChangeDifficulty 0
