#> player_manager:trigger/tick
#
# トリガー分岐処理
#
# @within function core:clock/skill_trigger/setup

# 雪玉
execute as @a[scores={UseSnowball=1..}] at @s run function job:trigger/snowball/

# 死亡/サヨナラ
execute as @a[scores={Deaths=1..}] at @s run function job:trigger/deaths/

# 弓
execute as @a[scores={UseBow=1..}] at @s run function job:trigger/bow/

# 食事
execute as @a[scores={FoodChanging=0..}] at @s if score @s FoodChanging > @s Food run function job:trigger/food/

# ニンジン棒
execute as @a[scores={UseCarrotStick=1..}] at @s run function job:trigger/carrot_stick/
# キノコ棒
execute as @a[scores={UseFungusStick=1..}] at @s run function job:trigger/fungus_stick/

# 近接攻撃
execute as @a[advancements={mob_manager:player_hurt_entity={melee_attack=true}}] at @s run function job:trigger/hit/

# スキル設定変更
execute as @a[scores={InstantChangeA=0..}] at @s run function job:change/instant/a
execute as @a[scores={InstantChangeB=0..}] at @s run function job:change/instant/b
execute as @a[scores={ModeChangeA=0..}] at @s run function job:change/mode/a
execute as @a[scores={ModeChangeB=0..}] at @s run function job:change/mode/b
