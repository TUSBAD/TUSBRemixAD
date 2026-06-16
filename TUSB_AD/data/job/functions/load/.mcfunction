#> job:load/
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# Lvに応じて名称が変化
execute if score @s Level matches 51..499 run scoreboard players operation @s Job *= $100 Const
execute if score @s Level matches 500.. run scoreboard players operation @s Job *= $1000 Const

# 下位職
execute if score @s Job matches 1 run function job:load/knight
execute if score @s Job matches 2 run function job:load/ninja
execute if score @s Job matches 3 run function job:load/archer
execute if score @s Job matches 4 run function job:load/white_mage
execute if score @s Job matches 5 run function job:load/black_mage
execute if score @s Job matches 6 run function job:load/summoner
execute if score @s Job matches 7 run function job:load/lancer
execute if score @s Job matches 8 run function job:load/creator

# 中位職
execute if score @s Job matches 101 run function job:load/knight
execute if score @s Job matches 102 run function job:load/ninja
execute if score @s Job matches 103 run function job:load/archer
execute if score @s Job matches 104 run function job:load/white_mage
execute if score @s Job matches 105 run function job:load/black_mage
execute if score @s Job matches 106 run function job:load/summoner
execute if score @s Job matches 107 run function job:load/lancer
execute if score @s Job matches 108 run function job:load/creator

# 上位職
execute if score @s Job matches 1001 run function job:load/knight
execute if score @s Job matches 1002 run function job:load/ninja
execute if score @s Job matches 1003 run function job:load/archer
execute if score @s Job matches 1004 run function job:load/white_mage
execute if score @s Job matches 1005 run function job:load/black_mage
execute if score @s Job matches 1006 run function job:load/summoner
execute if score @s Job matches 1007 run function job:load/lancer
execute if score @s Job matches 1008 run function job:load/creator

# リセット
scoreboard players add @s MPMaxFlag 0
scoreboard players set @s ModeSkillA 0
scoreboard players set @s ModeSkillB 0
scoreboard players set @s InstantSkillA 0
scoreboard players set @s InstantSkillB 0
scoreboard players set @s CurrentMode 0
scoreboard players set @s CurrentModeCost 0
