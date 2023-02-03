scoreboard players operation @s _math1 = @s _currentuse
scoreboard players operation @s _math1 += @s _use
scoreboard players operation @s _math2 = @s _math1

execute if entity @s[scores={_math1=..0}] 