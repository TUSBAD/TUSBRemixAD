#> core:version_update/check/
#データパックのアップデート
#データパック更新後プレイヤーがこのfunctionを実行する

execute unless data storage core: Version run function core:version_update/set
data modify storage core: BeforeVersion set from storage core: Version

scoreboard players set _ _ 0
execute store result score _ _ run function #core:version_update/check

# アップデートテキスト表示
execute if score _ _ matches 1 run schedule function core:version_update/result 1t

data modify storage core: Text set value ['""']
data modify storage core: Text append value '{"translate":"[System] 以前のVersion: v1.%1$s.%2$sα   現在のVersion: v1.%3$s.%4$sα","color":"green","with":[{"storage":"core:","nbt":"BeforeVersion.Major"},{"storage":"core:","nbt":"BeforeVersion.Minor"},{"storage":"core:","nbt":"UpdatingVersion.Major"},{"storage":"core:","nbt":"UpdatingVersion.Minor"}]}'


#メジャーバージョンチェック
execute if score _ _ matches 1 run function core:version_update/check/major
