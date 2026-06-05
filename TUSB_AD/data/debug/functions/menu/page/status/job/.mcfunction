#> debug:menu/page/status/job/
#
# 
#
# @within function debug:menu/page/status/

tellraw @s {"translate":"\n= Job =\n%s\n%s\n%s\n%s\n%s\n%s","with":[{"text":" 1. 剣士","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/job/change/knight"}},{"text":" 2. 忍者","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/job/change/ninja"}},{"text":" 3. 狩人","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/job/change/archer"}},{"text":" 4. 白魔導士","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/job/change/white_mage"}},{"text":" 5. 黒魔導士","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/job/change/black_mage"}},{"text":" 6. 召喚士","clickEvent":{"action": "run_command","value": "/function debug:menu/page/status/job/change/summoner"}}]}

# トリガー時の共通処理
    function debug:menu/page/trigger
