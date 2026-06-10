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

execute if entity @s[tag=ScoreToAbsorption.AntiGlitch.Protected] run function score_to_absorption:anti_glitch/modify

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
scoreboard players operation @s ScoreToAbsorption < #_ ScoreToAbsorption
attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-17 "ScoreToAbsorption" -838.8607 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-16 "ScoreToAbsorption" -419.4304 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-16 "ScoreToAbsorption" 419.4304 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-15 "ScoreToAbsorption" -209.7152 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-15 "ScoreToAbsorption" 209.7152 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-14 "ScoreToAbsorption" -104.8576 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-14 "ScoreToAbsorption" 104.8576 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-13 "ScoreToAbsorption" -52.4288 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-13 "ScoreToAbsorption" 52.4288 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-12 "ScoreToAbsorption" -26.2144 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-12 "ScoreToAbsorption" 26.2144 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-11 "ScoreToAbsorption" -13.1072 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-11 "ScoreToAbsorption" 13.1072 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-10 "ScoreToAbsorption" -6.5536 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-10 "ScoreToAbsorption" 6.5536 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0F "ScoreToAbsorption" -3.2768 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0F "ScoreToAbsorption" 3.2768 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0E "ScoreToAbsorption" -1.6384 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0E "ScoreToAbsorption" 1.6384 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0D "ScoreToAbsorption" -0.8192 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0D "ScoreToAbsorption" 0.8192 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0C "ScoreToAbsorption" -0.4096 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0C "ScoreToAbsorption" 0.4096 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0B "ScoreToAbsorption" -0.2048 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0B "ScoreToAbsorption" 0.2048 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0A "ScoreToAbsorption" -0.1024 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-0A "ScoreToAbsorption" 0.1024 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-09 "ScoreToAbsorption" -0.0512 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-09 "ScoreToAbsorption" 0.0512 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-08 "ScoreToAbsorption" -0.0256 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-08 "ScoreToAbsorption" 0.0256 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-07 "ScoreToAbsorption" -0.0128 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-07 "ScoreToAbsorption" 0.0128 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-06 "ScoreToAbsorption" -0.0064 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-06 "ScoreToAbsorption" 0.0064 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-05 "ScoreToAbsorption" -0.0032 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-05 "ScoreToAbsorption" 0.0032 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-04 "ScoreToAbsorption" -0.0016 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-04 "ScoreToAbsorption" 0.0016 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-03 "ScoreToAbsorption" -0.0008 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-03 "ScoreToAbsorption" 0.0008 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-02 "ScoreToAbsorption" -0.0004 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-02 "ScoreToAbsorption" 0.0004 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-01 "ScoreToAbsorption" -0.0002 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-01 "ScoreToAbsorption" 0.0002 add

execute store result score #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-00 "ScoreToAbsorption" -0.0001 add
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s minecraft:generic.max_absorption modifier add 00000002-0000-0000-0001-00 "ScoreToAbsorption" 0.0001 add

effect give @s minecraft:instant_health 1 252 true
tag @s add ScoreToAbsorption.Modified
scoreboard players reset @s ScoreToAbsorption
