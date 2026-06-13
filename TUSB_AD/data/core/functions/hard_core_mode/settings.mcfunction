#> core:hard_core_mode/settings
# １分後にハードコアモードにする

schedule function core:hard_core_mode/start 60s
tellraw @a [{"storage":"core:","nbt":"Prefix.SUCCESS"},{"translate":"1分後に、難易度を%1$sに変更します。","with":[{"translate":"ハードコア","color":"#a600ff","bold":true}],"bold":true,"color":"#e8383d"}]
tellraw @a [{"storage":"core:","nbt":"Prefix.INFO"},{"translate":"このテキストを押すと、難易度を%1$sに戻します。","with":[{"translate":"カジュアル","color":"#ff2A2A","bold": true}],"clickEvent":{"action":"run_command","value":"/trigger hcmode set 1"}}]
playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 2.0 1 0.0
scoreboard players enable @a hcmode
data modify storage core: count_down_time set value 60
execute in overworld run schedule function core:hard_core_mode/countdown 1s
