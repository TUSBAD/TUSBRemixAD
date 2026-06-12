#> player_manager:show_text/sneak_menu/skill/set
#
# スキルメニューを表示する
#
#

# 再表示
function player_manager:show_text/sneak_menu/show

# サウンド
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
tellraw @s ""
tellraw @s [{"text": "= スキル変更 ="}]
tellraw @s ["",{"text":"≪ ","color":"#d12e59","bold": true},{"translate":"モードスキル設定","bold": true,"clickEvent": {"action": "run_command","value": "/trigger SkillSetting set 1"}},{"text":" ≫","color":"#379bff","bold": true}]
tellraw @s ["",{"text":"≪ ","color":"#ff8080","bold": true},{"translate":"サポートスキル設定","bold": true,"clickEvent": {"action": "run_command","value": "/trigger SkillSetting set 10"}},{"text":" ≫","color":"#00ffff","bold": true}]
tellraw @s ""

# スコアリセット
scoreboard players reset @s ChangeSkillSet
scoreboard players enable @s ChangeSkillSet
scoreboard players enable @s SkillSetting
