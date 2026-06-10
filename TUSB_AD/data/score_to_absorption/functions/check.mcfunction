#   Copyright © 2020 赤石愛

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute store result score #__ ScoreToAbsorption run data get entity @s AbsorptionAmount 100
scoreboard players operation #__ ScoreToAbsorption -= #_ ScoreToAbsorption

execute if score #__ ScoreToAbsorption matches ..0 unless entity @s[tag=ScoreToAbsorption.AntiGlitch.UnsafeTick] run function score_to_absorption:modify
tag @s remove ScoreToAbsorption.AntiGlitch.UnsafeTick
execute if score #__ ScoreToAbsorption matches 1.. run function score_to_absorption:anti_glitch/protect
