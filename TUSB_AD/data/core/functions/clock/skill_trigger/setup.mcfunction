#> core:clock/trigger/setup
#
#
#
# @within tags function minecraft:tick

execute as @a[scores={Choyaku=2..,Jump=1..}] if predicate player_manager:effects/is_jump_boost at @s run function job:skill/ninja/choyaku/jump
execute as @a[scores={seiyou=2..,Jump=1..}] at @s run function job:skill/ninja/seiyou/jump
scoreboard players reset @a[scores={Jump=1..}] Jump
### 緩衝体力用被ダメージ補正処理
execute as @a[scores={HPChanging=0..}] if predicate player_manager:effects/has_absorptionamount run function core:clock/skill_trigger/setup2

#### 奈落介錯 y=-130以下
execute as @a[predicate=lib:in_void,scores={HP=1..}] at @s run function player_manager:kill/abyss

# trigger_tick
function player_manager:trigger/tick
