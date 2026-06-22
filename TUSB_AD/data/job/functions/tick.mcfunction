#> job:tick
#
# 職業関係プレイヤーtick
#
# @within function player_manager:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function job:one_second

# スキルCT


# スキルショトカ



# 幸運によるMP補正
execute store result score _ Luck run attribute @s minecraft:generic.luck get 10
execute unless score _ Luck = @s Luck run function job:luck_update

# MP回復
function job:mp_regen/



# マジックシールドのチェック
    execute if entity @s[tag=MagicShield] run effect give @s minecraft:resistance 1 100

# ウィンドウォール
    execute if entity @s[scores={WindWall=0..}] run function job:skill/black_mage/wind_wall/check

# 緩衝体力用被ダメージ補正処理
    execute if entity @s[scores={HPChanging=0..}] if predicate player_manager:effects/has_absorptionamount run function job:trigger/damage_resist/setup2

# 被ダメージトリガーリセット TODO
    scoreboard players reset @s[scores={DamageTaken=0..}] DamageTaken
    scoreboard players reset @s[scores={DamageResisted=0..}] DamageResisted