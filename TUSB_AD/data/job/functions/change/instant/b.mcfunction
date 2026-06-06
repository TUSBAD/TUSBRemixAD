#> job:change/instant/b
# スキル変更
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 設定するスロットの名称を取得
data modify storage tusb_remake: skill_slot_title set from storage tusb_remake: skill_slot_titles.instant.b

scoreboard players reset _ ChangeSkill
execute if score @s InstantChangeB matches 0..19 run scoreboard players operation _ ChangeSkill = @s InstantChangeB
execute if score @s InstantChangeB matches 99 run function job:change/reset

execute if score _ ChangeSkill matches 0.. if score @s Job matches 1 run function job:change/knight
execute if score _ ChangeSkill matches 0.. if score @s Job matches 2 run function job:change/ninja
execute if score _ ChangeSkill matches 0.. if score @s Job matches 3 run function job:change/archer
execute if score _ ChangeSkill matches 0.. if score @s Job matches 4 run function job:change/white_mage
execute if score _ ChangeSkill matches 0.. if score @s Job matches 5 run function job:change/black_mage
execute if score _ ChangeSkill matches 0.. if score @s Job matches 6 run function job:change/summoner

### もしスキル設定が変更されたなら、メッセージを出す
execute if score _ ChangeSkill matches 1000.. run tellraw @s [{"text":"スキルを","color":"green"},{"nbt":"skill_slot_title","storage":"tusb_remake:","interpret":true},"に設定しました。"]
execute if score _ ChangeSkill matches 1000.. run playsound item.flintandsteel.use master @s ~ ~ ~ 1 0.65 0
execute if score _ ChangeSkill matches 1000.. run scoreboard players operation @s ShowSkill = _ ChangeSkill
execute if score _ ChangeSkill matches 1000.. run function job:set_display/show/

scoreboard players reset InstantChangeB
scoreboard players enable @s InstantChangeB
scoreboard players set @s InstantChangeB -1
