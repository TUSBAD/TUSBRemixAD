#> debug:mode_change
#
# 

execute store result storage debug: Debug.Mode short 1 run data get storage debug: Debug.Mode -1

execute if data storage debug: Debug{Mode:1s} run tellraw @a {"text": "[server] §a通常モードに変更しました"} 

execute if data storage debug: Debug{Mode:-1s} run tellraw @a {"text": "[server] §4デバッグモードに変更しました"} 
