#> main:version_update/result
tellraw @a {"storage":"core:","nbt":"Text[]","interpret":true,"separator":"\n"}
execute unless entity @a run schedule function core:version_update/result 1t
