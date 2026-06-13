#> core:clock/half_sec
#
#
#
# @public
#Declare entity @s[tag=DoomEX]




### 致死の宣告
execute as @a[tag=DoomEx] run function player_manager:effect/invisible/doom_ex/damage

#Loop
execute in overworld run schedule function core:clock/half_sec 10t