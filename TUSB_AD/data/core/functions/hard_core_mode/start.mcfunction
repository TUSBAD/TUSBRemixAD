#> core:hard_core_mode/start
#ハードコアモード開始ぃ

schedule clear core:hard_core_mode/countdown
data modify storage tusb_remake: settings.hardcore set value 1b
function core:difficulty/apply/hardcore
