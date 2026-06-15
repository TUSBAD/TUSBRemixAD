#> job:trigger/food/
#
# 食事した時
#
# @within function player_manager:tick

### 食事トリガー前処理
scoreboard players operation @s LastFoodLevel -= @s FoodLevel
scoreboard players set _ _ -1
scoreboard players operation @s LastFoodLevel *= _ _

### 狩人＜ワイルドヒーリング＞
execute if score @s CurrentMode matches 3220..3229 if score @s LastFoodLevel matches 1.. run function job:skill/archer/wild_healing/eat

### トリガーリセット
scoreboard players operation @s LastFoodLevel = @s FoodLevel
scoreboard players reset @s FoodLevel