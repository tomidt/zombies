###as @e[aoe] at @s
tag @s remove new
tag @s add build
execute as @p at @s run function zombies:library/player/pos
scoreboard players operation @s facing = @p facing

#facing
#execute if score @s facing matches 1 at @s align xyz run tp @s ~0.5 ~ ~0.5 180 0
#execute if score @s facing matches 2 at @s align xyz run tp @s ~0.5 ~ ~0.5 270 0
#execute if score @s facing matches 3 at @s align xyz run tp @s ~0.5 ~ ~0.5 0 0
#execute if score @s facing matches 4 at @s align xyz run tp @s ~0.5 ~ ~0.5 90 0

#builds
execute if entity @s[tag=shop] run function zombies:shop/build
execute if entity @s[tag=mbox] run function zombies:mbox/build

#invalid
execute if entity @s[tag=build] run tellraw @p {"text":"Invalid item spawn","color":"red"}
execute if entity @s[tag=build] run kill @s