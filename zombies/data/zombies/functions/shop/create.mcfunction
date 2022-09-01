###as @e[llama] at @s
execute at @s align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {CustomNameVisible:0b,Duration:200000000,Tags:["shop","new"],CustomName:'{"text":"shop"}'}
tp @e[type=minecraft:trader_llama,name=shop] ~ 0 ~
execute as @e[type=minecraft:area_effect_cloud,tag=shop,tag=new] at @s run function zombies:shop/build

tag @e[type=minecraft:area_effect_cloud,tag=new] remove new
kill @s
tellraw @p {"text":"Shop placed","color":"gray"}

