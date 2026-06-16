#> job:mp/check/
## チュートリアルの残りの看板の設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### スニーク
execute if predicate player_manager:is_sneaking run function job:mp/check/sneak

### 空腹ペナルティ
scoreboard players set _ TUSB 5
execute if entity @s[predicate=player_manager:effects/is_hunger] run scoreboard players operation @s MPConsumption *= _ TUSB
execute if entity @s[predicate=player_manager:effects/is_hunger] run scoreboard players set @s MPAcceleration -1200

### エナジーセーブ
execute if entity @s[tag=EnergySave] run function job:mp/check/energy_save

### MP不足判定
execute if score @s MP < @s MPConsumption run function job:mp/check/lack_of_mp


### 発動可能ならMP消費し回復速度を落とす
execute if score @s ActivatedSkill matches 1.. run scoreboard players operation @s MP -= @s MPConsumption
execute if score @s ActivatedSkill matches 1.. run scoreboard players set @s MPAcceleration -600
