#> job:skill/knight/uxo_pu/damaged

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function job:mp/check/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 1260..1269 run function job:skill/knight/uxo_pu/heal

advancement revoke @s only job:trigger/knight/reactive_heal/damaged2
