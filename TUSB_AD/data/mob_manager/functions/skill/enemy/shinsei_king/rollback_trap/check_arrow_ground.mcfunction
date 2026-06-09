#> mob_manager:skill/enemy/shinsei_king/rollback_trap/check_arrow_ground

# 弓が地面に付いてるかどうかをチェックします
# つくまで且つアローがいなくなるまでloop
# 地面ついてる矢がいるならトラップに置き換え
execute as @e[type=arrow,tag=rollback_trap] if predicate job:is_inground at @s run function mob_manager:skill/enemy/shinsei_king/rollback_trap/change_arrow_to_trap
# まだ矢が残ってるならloop
execute if entity @e[type=arrow,tag=rollback_trap] unless predicate job:is_inground run schedule function mob_manager:skill/enemy/shinsei_king/rollback_trap/check_arrow_ground 1t replace