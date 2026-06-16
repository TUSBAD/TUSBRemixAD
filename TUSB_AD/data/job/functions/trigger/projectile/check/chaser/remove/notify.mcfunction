#> job:trigger/projectile/check/chaser/remove/notify
# エンチェイス後の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set from storage skill: chaser_owner
execute store result storage skill: _ byte 1 run data modify storage skill: _ set from entity @s UUID

execute if data storage skill: {_:false} at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 2 0
