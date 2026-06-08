#> job:skill/knight/majin_giri/hit
# 魔人斬りを発動(124X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function job:check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1240..1249 run effect give @s minecraft:weakness 1 127 true
execute if score _ ActivatedSkill matches 1240..1249 as @e[distance=..5,type=#lib:mob,tag=Enemy,sort=nearest,limit=1] if predicate job:is_hurttime at @s run function job:skill/knight/majin_giri/apply
