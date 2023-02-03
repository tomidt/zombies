#as @e[aoe] at @s
execute store result score @s _points run data get block ~ ~-3 ~ Items[10].Count
execute store result score @s _m_tbear if block ~ ~-3 ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:diamond"}]}
execute store result score @s _m_first if block ~ ~-3 ~ minecraft:barrel{Items:[{Slot:12b,id:"minecraft:redstone"}]}
execute if entity @s[scores={_m_tbear=1..}] store result score @s _use run data get block ~ ~-3 ~ Items[11].Count
execute if entity @s[scores={_m_tbear=0}] run scoreboard players set @s _currentuse -1
execute if entity @s[scores={_m_tbear=1..}] run tag @s add tbear
function zombies:mbox/blib/count

execute if entity @s[scores={_m_tbear=1..,_m_first=1}] run function zombies:mbox/blib/enable
execute if entity @s[scores={_m_tbear=1..,_m_first=0}] run function zombies:mbox/blib/disable
execute if entity @s[scores={_m_tbear=0}] run function zombies:mbox/enable

tellraw @p {"text":"Settings updated","color":"gray"}