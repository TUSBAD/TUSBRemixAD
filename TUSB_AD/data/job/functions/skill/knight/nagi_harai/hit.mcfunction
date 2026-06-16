#> job:skill/knight/nagi_harai/hit
# 薙ぎ払いを発動(121X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function job:mp/check/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1210..1219 as @e[distance=..5,type=#lib:mob,tag=Enemy] if predicate job:is_hurttime at @s run function job:skill/knight/nagi_harai/apply
