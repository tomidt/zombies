setblock ~ ~ ~ minecraft:spruce_stairs[half=top,facing=north]
setblock ~-1 ~ ~ minecraft:spruce_planks
setblock ~1 ~ ~ minecraft:spruce_planks
summon item_frame ~ ~ ~-1 {Facing:2b,Invisible:1b,Item:{id:"minecraft:anvil",Count:1b}}
setblock ~-1 ~-3 ~ command_block[facing=up]{Command:"execute positioned ~ ~3 ~ as @e[type=minecraft:area_effect_cloud,tag=zombies,tag=mbox,distance=1.1..1.2,limit=1] at @s run function zombies:mbox/enable"} replace
setblock ~-1 ~-4 ~ command_block[facing=up]{Command:"execute positioned ~ ~4 ~ as @e[type=minecraft:area_effect_cloud,tag=zombies,tag=mbox,distance=1.1..1.2,limit=1] at @s run function zombies:mbox/update"} replace

