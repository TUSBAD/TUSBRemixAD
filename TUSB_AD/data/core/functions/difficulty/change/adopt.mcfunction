#> core:difficulty/change/adopt

scoreboard players remove #World ChangeDifficulty 1
scoreboard players operation _ ChangeDifficulty = #World ChangeDifficulty
scoreboard players set _ _ 10
scoreboard players operation _ ChangeDifficulty %= _ _

execute if score #World ChangeDifficulty matches 1.. if score _ ChangeDifficulty matches 0 run tellraw @a ["",{"translate":"変更まで残り%1#s秒……","with":[{"score":{"name":"#World","objective":"ChangeDifficulty"}}]}]

execute if score #World ChangeDifficulty matches 0 if data storage core: difficult{change_to:"picnic"} run function core:difficulty/select/picnic
execute if score #World ChangeDifficulty matches 0 if data storage core: difficult{change_to:"casual"} run function core:difficulty/select/casual
execute if score #World ChangeDifficulty matches 0 run data remove storage core: difficult.change_to
execute if score #World ChangeDifficulty matches 0 run scoreboard players reset #World ChangeDifficulty
