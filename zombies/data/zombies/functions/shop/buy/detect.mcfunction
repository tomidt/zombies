###at @e[aoe] at @s
execute if score @p[distance=..5,scores={detect=1..},nbt={SelectedItem:{id:"minecraft:nether_star"}}] points < @s _points run tellraw @p {"text":"You do not have enough points to purchase this.","color":"red"}
execute if score @p[distance=..5,scores={detect=1..},nbt={SelectedItem:{id:"minecraft:nether_star"}}] points >= @s _points run function zombies:shop/buy/buy
scoreboard players set @p[distance=..5,scores={detect=1..}] detect 0