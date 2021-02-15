#为digtrigger函数修正非挖掘的使用带来的加分(右键副手放置时主手有工具)
#判断条件用于排除地毯小人
execute unless score @s carpetBot matches 1 run scoreboard players add @s digCounter 1
execute unless score @s carpetBot matches 1 run scoreboard players add 总挖掘量 digCounter 1
execute unless score @s carpetBot matches 1 run scoreboard players add 总挖掘量 totalList 1
#重置探测右键副手放置时主手有工具的成就
advancement revoke @s only fz:scoreboards/digcounter/toolsfix2