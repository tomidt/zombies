#update coords
execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]
#update rotation
execute if entity @s[y_rotation=-45..44] run scoreboard players set @s facing 3
execute if entity @s[y_rotation=45..134] run scoreboard players set @s facing 4
execute if entity @s[y_rotation=135..224] run scoreboard players set @s facing 1
execute if entity @s[y_rotation=225..314] run scoreboard players set @s facing 2