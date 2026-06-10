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

execute if entity @s[tag=ScoreToAbsorption.Modified] run function score_to_absorption:restore
execute unless entity @s[tag=ScoreToAbsorption.Return] if score @s ScoreToAbsorption matches -2147483648.. run function score_to_absorption:check
tag @s[tag=ScoreToAbsorption.Return] remove ScoreToAbsorption.Return
advancement revoke @s only score_to_absorption:player_tick
