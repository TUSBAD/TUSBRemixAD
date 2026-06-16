#> job:skill/knight/nagashi_giri/hit
# 流し斬りを発動(120X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function job:mp/check/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1200..1209 as @e[distance=..5,type=#lib:mob,tag=Enemy,sort=nearest,limit=1] if predicate job:is_hurttime at @s run function job:skill/knight/nagashi_giri/apply
