#> time_limit:sign_stand/trade/trapped_chest_trade

# トラップチェスト
# 2つ以上のアイテムはfunctionで判別します
# アイテムチェーーーック
execute store result score @s TUSB run clear @s minecraft:chest 0
execute store result score @s TUSB_sub run clear @s minecraft:emerald 0
# 両方とも数満たしてるならまずclear
execute if score @s TUSB matches 64.. if score @s TUSB_sub matches 64.. run clear @s minecraft:chest 64
execute if score @s TUSB matches 64.. if score @s TUSB_sub matches 64.. run clear @s minecraft:emerald 64
# アイテムを渡しましょう
execute if score @s TUSB matches 64.. if score @s TUSB_sub matches 64.. at @s run summon minecraft:bat ~ ~0.1 ~ {Health:0.001f,active_effects:[{Id:14,amplifier:0b,duration:100,show_particles:false},{id:"minecraft:instant_damage",amplifier:0b,duration:100,show_particles:false}],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:trapped_chest",Count:64b}}]}