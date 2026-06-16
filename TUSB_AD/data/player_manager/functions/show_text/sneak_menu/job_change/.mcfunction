#> player_manager:show_text/sneak_menu/job_change/
#
# 職業変更できます、ハロワはクビです。
#
# @within function player_manager:show_text/trigger/

# トリガーリセット
scoreboard players reset @s ChangeJob
scoreboard players enable @s ChangeJob

#攻略数を取得し、10島以下なら実行しない
execute store result score _ TUSB run data get storage core: conquer.count.total
execute if score _ TUSB matches ..10 run tellraw @s ["\n",{"storage":"core:","nbt":"Prefix.FAILED"},{"translate":"攻略数%1$sが必要です。","bold": true,"with":[{"translate":"10島","color":"#ff2a2a","bold": true}]},"\n"]
execute if score _ TUSB matches ..10 run return fail

execute at @s store result score _ TUSB if entity @e[distance=..10,predicate=mob_manager:near_enemy]
tellraw @s "====================================================="
execute if score _ TUSB matches ..0 run tellraw @s ["\n",{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"各職業のボタンを押すと、転職が可能です。","color":"#59ffff"},"\n"]
#警告メッセージ
execute if score _ TUSB matches 1.. run tellraw @s ["\n",{"storage":"core:","nbt":"Prefix.FAILED"},{"translate":"周囲10mに敵が要る為、転職できません。:残り %1$s体","color":"#ff2a2a","with":[{"score":{"name":"_","objective":"TUSB"}}]},"\n"]
#制限中なら明示的に失敗させる
execute if score _ TUSB matches 1.. run return fail
tellraw @s ""
tellraw @s ""
tellraw @s ["",{"text":" < "},{"text":"K","font":"icon","color":"#3cfaff","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"剣士系統","color":"#3cfaff"}]}}},{"text":" >"},{"text":" < "},{"text":"N","font":"icon","color":"#a433ff","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 2"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"忍者系統","color":"#a433ff"}]}}},{"text":" >"},{"text":" < "},{"text":"H","font":"icon","color":"#ff8f59","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"狩人系統","color":"#ff8f59"}]}}},{"text":" >"},{"text":" < "},{"text":"W","font":"icon","color":"white","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"白魔導士系統","color":"white"}]}}},{"text":" >"}]
tellraw @s ""
tellraw @s ["",{"text":" < "},{"text":"B","font":"icon","color":"#1c8dff","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"黒魔導士系統","color":"#1c8dff"}]}}},{"text":" >"},{"text":" < "},{"text":"S","font":"icon","color":"#ffff09","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 6"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"召喚士系統","color":"#ffff09"}]}}},{"text":" >"},{"text":" < "},{"text":"L","font":"icon","color":"#ff3737","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"槍術士系統","color":"#ff3737"}]}}},{"text":" >"},{"text":" < "},{"text":"F","font":"icon","color":"#00ff40","clickEvent":{"action":"run_command","value":"/trigger ChangeJob set 8"},"hoverEvent":{"action":"show_text","value":{"translate":"%1$sに転職する！","with":[{"translate":"創成術士系統","color":"#00ff40"}]}}},{"text":" >"}]
function job:change/
tellraw @s ""
tellraw @s ""
tellraw @s "====================================================="