#as @e[aoe] at @s
execute store result score @s _points run data get block ~ ~-1 ~ Items[9].Count
execute store result score @s _output if block ~ ~-1 ~ minecraft:barrel{Items:[{Slot:17b,id:"minecraft:redstone"}]}
execute store result score @s _range if block ~ ~-1 ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:redstone"}]}
execute store result score @s _use if block ~ ~-1 ~ minecraft:barrel{Items:[{Slot:13b,id:"minecraft:diamond"}]}
execute store result score @s _item if block ~ ~-1 ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:white_stained_glass_pane"}]}
execute if entity @s[scores={_use=1..}] store result score @s _use run data get block ~ ~-1 ~ Items[13].Count
execute if entity @s[scores={_use=1..}] run scoreboard players operation @s _currentuse = @s _use
execute if entity @s[scores={_use=0}] run scoreboard players set @s _currentuse -1
data modify entity @s CustomName set from block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Name

tellraw @p {"text":"Settings updated","color":"gray"}