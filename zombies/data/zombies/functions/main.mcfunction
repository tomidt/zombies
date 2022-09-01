###player
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{display:{Name:'{"text":" "}'},Unbreakable:1b} 1
execute as @a if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] run clear @s minecraft:warped_fungus_on_a_stick
execute as @a at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:gray_stained_glass_pane"}]}] unless entity @e[type=area_effect_cloud,tag=shop,distance=..2,scores={_range=0,_use=0}] unless entity @e[type=area_effect_cloud,tag=shop,distance=..2,scores={_range=0,_use=1..,_currentuse=1..}] unless entity @e[type=area_effect_cloud,tag=shop,distance=..5,scores={_range=1,_use=0}] unless entity @e[type=area_effect_cloud,tag=shop,distance=..5,scores={_range=1,_use=1..,_currentuse=1..}] run item replace entity @s hotbar.8 with minecraft:gray_stained_glass_pane
execute as @a at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:nether_star"}]}] unless entity @e[type=area_effect_cloud,tag=shop,distance=..2,scores={_range=0,_currentuse=0}] if entity @e[type=area_effect_cloud,tag=shop,distance=..2,scores={_range=0}] run item replace entity @s hotbar.8 with minecraft:nether_star{display:{Name:'{"text":"Right Click to Purchase","color":"green","italic":false}',Lore:['{"text":"detect","color":"gray","italic":false}']}} 1
execute as @a at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:nether_star"}]}] unless entity @e[type=area_effect_cloud,tag=shop,distance=..5,scores={_range=1,_currentuse=0}] if entity @e[type=area_effect_cloud,tag=shop,distance=..5,scores={_range=1}] run item replace entity @s hotbar.8 with minecraft:nether_star{display:{Name:'{"text":"Right Click to Purchase","color":"green","italic":false}',Lore:['{"text":"detect","color":"gray","italic":false}']}} 1

###shops
#creation
execute as @e[type=minecraft:trader_llama,name=shop] at @s run function zombies:shop/create
#run
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=0}] at @s if entity @p[distance=..2,nbt={SelectedItem:{id:"minecraft:nether_star"}}] run title @a[distance=..2] actionbar ["",{"text":"Purchase ","color":"white"},{"selector":"@s","color":"blue"},{"text":" for ","color":"white"},{"score":{"name":"@s","objective":"_points"},"color":"green"},{"text":"◎","color":"green"}]
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=1}] at @s if entity @p[distance=..5,nbt={SelectedItem:{id:"minecraft:nether_star"}}] run title @a[distance=..5] actionbar ["",{"text":"Purchase ","color":"white"},{"selector":"@s","color":"blue"},{"text":" for ","color":"white"},{"score":{"name":"@s","objective":"_points"},"color":"green"},{"text":"◎","color":"green"}]
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=0}] at @s if entity @p[distance=..2,scores={detect=1..}] run function zombies:shop/buy/detect
execute as @e[type=minecraft:area_effect_cloud,tag=shop,scores={_range=1}] at @s if entity @p[distance=..5,scores={detect=1..}] run function zombies:shop/buy/detect


