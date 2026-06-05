#> player_manager:show_text/trigger

execute if score @s hcmode matches 1 run function core:hard_core_mode/no

execute if score @s hcmode matches 1 run scoreboard players reset @s hcmode

execute if score @s isfmode matches 1 run function core:tocult_mode/no

execute if score @s isfmode matches 1 run scoreboard players reset @s isfmode

# スニークトリガー
execute if entity @s[scores={SneakingTime=1..}] run function player_manager:sneak/
execute if entity @s[scores={SneakFrequency=1..}] run function player_manager:sneak/frequency

# スキル変更トリガー
execute if score @s ChangeSkillSet matches 1 run function player_manager:show_text/sneak_menu/skill/set

# スキル変更設定
execute unless score @s SkillSetting matches 0 run function player_manager:show_text/sneak_menu/skill/display

# GM
# execute if score @s UNO matches 1 run function mob_manager:gimmic/skill/game_master/1/uno

# execute if score @s UNO matches 1 run scoreboard players reset @s UNO

# シフトメニュー
execute if score @s ShowMenu matches 1.. run function player_manager:show_text/trigger/show_menu
