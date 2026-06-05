#> debug:tick/tag/invulnerable
#
# 
#
# @within function debug:tick/

scoreboard players set @s PurgatoryInvalid 1
scoreboard players set @s TocultInvalid 1

effect give @s instant_health 4 25 true
execute if score @s Doom matches 1.. run effect give @s minecraft:invisibility 1 6

execute if score @s MP < @s MPMax run scoreboard players operation @s MP = @s MPMax
