#> player_manager:show_text/sneak_menu/skill/display
#
# スキルを設定させるための表示を出すためのトリガー
#
#

# 再表示
function player_manager:show_text/sneak_menu/show

tellraw @s ""

# モードスキル
execute if score @s SkillSetting matches 1 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2
execute if score @s SkillSetting matches 1 run function job:display/mode/a
execute if score @s SkillSetting matches 1 run function job:display/mode/b

# サポートスキル
execute if score @s SkillSetting matches 10 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
execute if score @s SkillSetting matches 10 run function job:display/instant/a
execute if score @s SkillSetting matches 10 run function job:display/instant/b

# スコアリセット
scoreboard players reset @s SkillSetting
scoreboard players enable @s SkillSetting
