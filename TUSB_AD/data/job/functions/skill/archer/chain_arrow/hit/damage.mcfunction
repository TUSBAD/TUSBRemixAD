#> job:skill/archer/chain_arrow/hit/damage
# チェインアローが直接当たった時

### 演出する表示するカウントが残っているときだけ表示
execute unless data storage skill: {chain_arrow_count:0} run playsound minecraft:entity.arrow.hit master @a[distance=..32] ~ ~ ~ 2 0.8 0.2
execute unless data storage skill: {chain_arrow_count:0} run particle crit ~ ~1 ~ 1 1 1 0.1 30 force

### カウントを減らす
execute store result storage skill: chain_arrow_count int 1 run data get storage skill: chain_arrow_count 0.9999999999

### ダメージを入れる
function score_damage:api/attack
