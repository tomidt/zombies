playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~
scoreboard players operation @p[scores={detect=1..}] points -= @s _points
execute if entity @s[scores={_output=1..}] run setblock ~ ~-2 ~ minecraft:redstone_block
execute if entity @s[scores={_item=0}] at @p[scores={detect=1..}] run summon minecraft:item ~ ~ ~ {Tags:["shop"],Item:{id:"minecraft:dirt",Count:1b}}
execute if entity @s[scores={_item=0}] run data modify entity @e[type=minecraft:item,tag=shop,limit=1] Item set from block ~ ~-1 ~ Items[{Slot:11b}]
execute unless entity @s[scores={_use=0}] run scoreboard players remove @s _currentuse 1

execute if entity @s[scores={_m_tbear=1}] run function zombies:mbox/blib/calc

#calc tbear first 1/(n * (_currentuse + _use))
#rng use distance walk % items
#if tbear add one and mod