#> player_manager:effect/invisible/
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エーテル
execute if entity @s[advancements={player_manager:effects/invisible={Ether_1=true}}] run function player_manager:effect/invisible/ether/1
execute if entity @s[advancements={player_manager:effects/invisible={Ether_2=true}}] run function player_manager:effect/invisible/ether/2
execute if entity @s[advancements={player_manager:effects/invisible={Ether_3=true}}] run function player_manager:effect/invisible/ether/3
### エリクサー
execute if entity @s[advancements={player_manager:effects/invisible={Elixir_1=true}}] run function player_manager:effect/invisible/elixir/1
execute if entity @s[advancements={player_manager:effects/invisible={Elixir_2=true}}] run function player_manager:effect/invisible/elixir/2

### 死の宣告
execute if entity @s[advancements={player_manager:effects/invisible={Doom=true}},tag=!Doom] run function player_manager:effect/invisible/doom/give
### 致死の宣告
execute if entity @s[advancements={player_manager:effects/invisible={DoomEx=true}},tag=!DoomEx] if score #Difficulty Difficulty matches 2.. run function player_manager:effect/invisible/doom_ex/give
### 即死の宣告
execute if entity @s[advancements={player_manager:effects/invisible={DeathDoom=true}},tag=!DeathDoom] if score #Difficulty Difficulty matches 3.. run function player_manager:effect/invisible/death_doom/give
### 魔力浸食
execute if entity @s[advancements={player_manager:effects/invisible={ManaErosion=true}},tag=!ManaErosion] run function player_manager:effect/invisible/mana_erosion/give

### 聖水
execute if entity @s[advancements={player_manager:effects/invisible={HolyWater=true}}] run function player_manager:effect/invisible/doom/clear
### 黄金酒の聖水
execute if entity @s[advancements={player_manager:effects/invisible={GoldWater=true}}] run function player_manager:effect/invisible/doom_ex/clear
### リコール
execute if entity @s[advancements={player_manager:effects/invisible={RecallPotion=true}}] run function player_manager:effect/invisible/recall_potion/give

effect clear @s minecraft:invisibility
advancement revoke @s only player_manager:effects/invisible
