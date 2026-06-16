#> job:trigger/damage_resist/setup2
#
#
#
# @within function job:tick

### 前のHPから今のHPを引く
scoreboard players operation @s DamageResisted = @s HP
execute store result storage job: _ int 10 run scoreboard players operation @s DamageResisted -= @s HPChanging
execute store result score @s DamageResisted run data get storage job: _
### 回復だった場合は0にする
scoreboard players set @s[scores={DamageResisted=..-1}] DamageResisted 0
