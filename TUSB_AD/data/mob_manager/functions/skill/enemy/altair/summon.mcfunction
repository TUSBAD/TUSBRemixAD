#> mob_manager:skill/enemy/altair/summon
#
# 泡沫となるがいい
#
# @within function mob_manager:skill/enemy/altair/

tellraw @a ["",{"selector":"@s"},{"translate":" 「%1$s」","color":"white","bold":true,"with":[{"translate":"§9§l泡 §9§l沫 §9§lと §9§lな §9§lる §9§lが §9§lい §9§lい §9§l！§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"強化された眷属を召喚する。","color":"red"}}}]}]

function mob_manager:skill/enemy/summon/enhanced_servants
