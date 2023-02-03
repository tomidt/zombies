###as @e[aoe] at @s
setblock ~ ~-1 ~ minecraft:redstone_lamp
setblock ~ ~-4 ~ barrel[facing=up]{CustomName:'{"text":"Mystery Box Loot Table"}'} replace
setblock ~ ~-3 ~ barrel[facing=up]{Items:[{Slot:0b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:1b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:2b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:3b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:4b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:5b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:6b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:7b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:8b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:9b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:10b,id:"minecraft:white_stained_glass_pane",Count:1b},{Slot:11b,id:"minecraft:white_stained_glass_pane",Count:1b},{Slot:12b,id:"minecraft:white_stained_glass_pane",Count:1b},{Slot:13b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:14b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:15b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:16b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"Disabled","color":"dark_red","italic":false}',Lore:['{"text":" Do not modify","color":"gray","italic":false}']}}},{Slot:17b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:18b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:19b,id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Set Cost","color":"gold","italic":false}',Lore:['[{"text":" Place [","color":"gray","italic":false},{"text":"Emeralds","color":"green"},{"text":"] in slot to set price","color":"gray"}]','[{"text":" Cost is taken from scoreboard [","color":"gray","italic":false},{"text":"points","color":"gold"},{"text":"]","color":"gray"}]']}}},{Slot:20b,id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Set Min Value","color":"gold","italic":false}',Lore:['[{"text":" Place [","color":"gray","italic":false},{"text":"Diamonds","color":"aqua"},{"text":"] to set the min # of times this box can be used","color":"gray"}]','[{"text":" After reaching value, there will be a [","color":"gray","italic":false},{"text":"1/(n + 1)","color":"blue"},{"text":"] chance of a teddy bear"}]','{"text":" On teddy bear, this box will be disabled and another box enabled","color":"gray","italic":false}','{"text":" If slot is empty, this box will always remain enabled","color":"gray","italic":false}']}}},{Slot:21b,id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Toggle is First","color":"gold","italic":false}',Lore:['[{"text":" Place [","color":"gray","italic":false},{"text":"Redstone","color":"red"},{"text":"] to enable is First"}]','{"text":" If min value is set(rotating box) this box will be the starting box","color":"gray","italic":false}']}}},{Slot:22b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:23b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:24b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}},{Slot:25b,id:"minecraft:oak_sign",Count:1b,tag:{display:{Name:'{"text":"Current State","color":"gold","italic":false}',Lore:['{"text":" Visual indicator only, do not modify","color":"gray","italic":false}']},BlockEntityTag:{Color:"-1"}}},{Slot:26b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'}}}],CustomName:'{"text":"Mystery Box Settings","italic":false}'} replace

#cost
#enabled on power
#teddy bear
#redo add set min uses

execute if score @s facing matches 1 run function zombies:mbox/blib/1
execute if score @s facing matches 2 run function zombies:mbox/blib/2
execute if score @s facing matches 3 run function zombies:mbox/blib/3
execute if score @s facing matches 4 run function zombies:mbox/blib/4

scoreboard players set @s _points 0
scoreboard players set @s _use 0
scoreboard players set @s _currentuse 0

scoreboard players set @s _m_enablepower 0
scoreboard players set @s _m_tbear 0
scoreboard players set @s _m_enabled 0


tag @s remove build
tellraw @p {"text":"Mystery box placed","color":"gray"}