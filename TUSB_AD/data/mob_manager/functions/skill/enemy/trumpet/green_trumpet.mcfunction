#> mob_manager:skill/enemy/trumpet/green_trumpet
#
# 魔緑のラッパ
#
# @within function mob_manager:skill/enemy/trumpet/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§4§l魔緑のラッパ§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"最も近い、村人やスポナー等を除くエンティティをkillする。","color":"red"}}}]}]

tag @e[tag=Trumpet,sort=nearest,limit=1] add TrpDeath

scoreboard players set @e[tag=TrpDeath] DeathCount 4
