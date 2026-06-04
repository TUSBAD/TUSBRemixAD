#> job:skill/black_mage/shadow/spell

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function skill:check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 5280..5289 run function job:skill/black_mage/shadow/apply
