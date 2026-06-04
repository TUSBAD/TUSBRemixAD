#> mob_manager:skill/enemy/shinen_king/feul_gelmir
#
# フェウル・ゲルミル
#
# @within function mob_manager:skill/enemy/shinen_king/

tellraw @a[distance=..64] ["",{"selector":"@s","color":"white","bold":true},{"translate":" は","color":"white","bold":true},{"translate":"%1$sを唱えた！","color":"white","bold":true,"with":[{"translate":"§f§l§k||§0§l§k||§f§l§k||§0§l§k||§r §5§l§nフェウル§4§l§nゲルミル§r §f§l§k||§0§l§k||§f§l§k||§0§l§k||§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"自身に即時回復Lv10と緩衝体力Lv255を付与し、プレイヤーに致死の宣告と耐性削除を付与する。","color":"red"}}}]}]

effect give @e[tag=king,limit=1] minecraft:instant_damage 1200 10 true 

effect give @a[predicate=!player_manager:invulnerable_player,distance=..30] minecraft:invisibility 1 250 true

effect clear @a[distance=..64] minecraft:resistance

effect give @e[tag=Ememy,distance=..30] minecraft:absorption 60 255 true 

particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 50 force @a

playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..128] ~ ~ ~ 1 0 1

playsound minecraft:item.totem.use hostile @a[distance=..128] ~ ~ ~ 1 2 1

particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0.25 250 force

particle minecraft:witch ~ ~1 ~ 1 1 1 0.25 250 force
