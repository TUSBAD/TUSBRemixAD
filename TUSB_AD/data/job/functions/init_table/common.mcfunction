#> job:init_table/common
#
#
#
# @within function job:init_table/


### 全職共通

data modify storage skill: Data.Common set value []
data modify storage skill: Data.Common append value {Job:"共通",Icon:"C",Skill:"墓掘り",Name:"墓掘り",Level:1,ChangeSkill:1899,AcquireLevel:{Min:999,Max:100},MP:0,Interval:0,Trigger:"スニークする",ClickEvent:'{"storage":"skill:","nbt":"Skill.Skill","clickEvent":{"action":"run_command","value":"/trigger ChangeSkill set 1899"}}',Lore:['[{"translate":"死亡時に落としたアイテムを回収する。","color":"white","italic":false},{"storage":"skill:","nbt":"NewLine","interpret":true}]','[{"translate":"※注意 このアイテムを使用した直後数秒は","italic":false,"color":"red","bold":true}]','[{"translate":"ワールドから抜けないようにしてください。","italic":false,"color":"red","bold":true}]'],LoreCount:6}
execute if data storage skill: Skill{Name:"墓掘り",Level:1} run data modify storage skill: Skill set from storage skill: Data.Common[{Name:"墓掘り",Level:1}]