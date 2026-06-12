#> core:clock/trigger/setup2
#
#
#
# @within function core:clock/skill_trigger/setup

### 前のHPから今のHPを引く
scoreboard players operation @s DamageResisted = @s HP
execute store result storage tusb_remake: _ int 10 run scoreboard players operation @s DamageResisted -= @s HPChanging
execute store result score @s DamageResisted run data get storage tusb_remake: _
### 回復だった場合は0にする
scoreboard players set @s[scores={DamageResisted=..-1}] DamageResisted 0
