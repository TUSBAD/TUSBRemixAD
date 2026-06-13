#> player_manager:sleep/
# 寝た時の効果
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage score_damage: Argument set value {Damage:19,EPF:0,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは、無謀にも%2$sで寝てしまった...","with":[{"selector":"@s"},{"translate": "危険地帯","color": "#FF2A2A"}]}]'}
tellraw @s[gamemode=adventure] {"text":"痛っ！ここで寝るのは危ないようだ。","color":"yellow"}
# 対象を実行者にしてfunctionを実行
execute as @s[gamemode=adventure] run function score_damage:api/attack
# 引数を明示的にリセット
data remove storage score_damage: Argument

execute if data storage core: difficult{world:"picnic"} run effect give @s[gamemode=survival] minecraft:instant_health 3 9 false
tellraw @s[gamemode=survival] {"text":"( ˘ω˘ ) ｽﾔｧ…疲れが取れていく…","color":"aqua"}

scoreboard players set @s SleepInBed 0
