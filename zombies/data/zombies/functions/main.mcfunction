###player
#refactor player code
execute if score #SERVER _t_detect matches 1 as @a run function zombies:library/detect

#creation
execute if score #SERVER _t_create matches 1 as @e[type=minecraft:area_effect_cloud,tag=zombies,tag=new] at @s run function zombies:library/create

###shops

#run
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=0}] at @s if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:nether_star"}}] run title @a[distance=..2] actionbar ["",{"text":"Purchase ","color":"white"},{"selector":"@s","color":"blue"},{"text":" for ","color":"white"},{"score":{"name":"@s","objective":"_points"},"color":"green"},{"text":"◎","color":"green"}]
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=1}] at @s if entity @p[distance=..5,nbt={SelectedItem:{id:"minecraft:nether_star"}}] run title @a[distance=..5] actionbar ["",{"text":"Purchase ","color":"white"},{"selector":"@s","color":"blue"},{"text":" for ","color":"white"},{"score":{"name":"@s","objective":"_points"},"color":"green"},{"text":"◎","color":"green"}]
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=0}] at @s if entity @p[distance=..2,scores={detect=1..}] run function zombies:shop/buy/detect
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=1}] at @s if entity @p[distance=..5,scores={detect=1..}] run function zombies:shop/buy/detect


