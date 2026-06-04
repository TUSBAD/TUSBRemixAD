#> mob_manager:skill/enemy/next_war/oryunpos_thitanomakia/
#
# オリュンポス・ティタノマキア
#
# @within function mob_manager:skill/enemy/next_war/

# NextWar
tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§lオリュンポス・ティタノマキア§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"スキルを発動しないゾンピグを自身の位置に徴集し、攻撃力と移動速度Lv12を付与する。","color":"red"}}}]}]

execute as @e[distance=..32,type=zombified_piglin,tag=!SkillMob] run function mob_manager:skill/enemy/next_war/oryunpos_thitanomakia/effect
