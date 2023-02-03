tag @s add enable
setblock ~ ~-2 ~ minecraft:redstone_block
item replace block ~ ~-3 ~ container.16 with lime_stained_glass_pane{display:{Name:'{"text":"Enabled","color":"green","italic":false}',Lore:['{"text":" Do not modify","color":"gray","italic":false}']}} 1
execute if entity @s[scores={_m_tbear=1..}] run scoreboard players operation @s _currentuse = @s _use
