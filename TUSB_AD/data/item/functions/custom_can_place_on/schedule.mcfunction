#> item:custom_can_place_on/schedule
#
#
# Adv設置処理スケジュール(ゴースト対策)
#
#
#as player
execute as @a[gamemode=!creative,gamemode=!spectator,advancements={item:can_place_on=true}] at @s run function item:custom_can_place_on/init
