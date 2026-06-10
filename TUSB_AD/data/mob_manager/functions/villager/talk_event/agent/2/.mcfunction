#> mob_manager:villager/talk_event/agent/2/
# エージェントとの会話２
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## アイテムを持ってたらお断り
execute if entity @s[predicate=player_manager:has_inventory] run function mob_manager:villager/talk_event/agent/2/refuse
execute unless entity @s[predicate=player_manager:has_inventory] run function mob_manager:villager/talk_event/agent/2/accept
