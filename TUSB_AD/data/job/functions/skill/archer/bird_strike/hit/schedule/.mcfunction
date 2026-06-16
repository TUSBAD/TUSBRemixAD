#> job:skill/archer/bird_strike/hit/schedule/
# バードストライク効果判定

data modify storage skill: _ set value false
execute as @e[tag=FallDown] at @s run function job:skill/archer/bird_strike/hit/schedule/fall

execute if data storage skill: {_:true} in minecraft:overworld run schedule function job:skill/archer/bird_strike/hit/schedule/ 1t
