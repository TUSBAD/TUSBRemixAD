#> core:difficulty/select/
#
# 難易度選択
#
# 仮作成

summon minecraft:text_display -1749.5 115.0 -136.5 {Tags:[DifficultSelect],text:'["\\n",{"translate":"難易度を右クリックで選択してください","color":"black"},"\\n\\n\\n",{"translate":" %1$s   %2$s   %3$s\\n   %4$s   %5$s","with":[{"translate":"ハードコア","bold":true,"underlined":true,"color":"#a600ff"},{"translate":"ナイトメア","bold":true,"underlined":true,"color":"#2848ff"},{"translate":"アナザー","bold":true,"underlined":true,"color":"#ff00ff"},{"translate":"カジュアル","bold":true,"underlined":true,"color":"#FF2A2A","strikethrough":false},{"translate":"ピクニック","bold":true,"underlined":true,"color":"#99CC33"}]},"\\n\\n"]',alignment:"center",transformation:{right_rotation:{axis:[0f,1f,0f],angle:-1.571f},scale:[1f,1f,1f],left_rotation:{axis:[0f,0f,1f],angle:0.262f},translation:[0f,0f,0f]},brightness:{block:15,sky:15},background:-402653185,interpolation_duration:10}

schedule function core:difficulty/select/end 24000t
#forceload add -1750 -135