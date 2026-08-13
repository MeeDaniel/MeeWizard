execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~0 ~0.05 ~0.75 1 2 -1 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~0.75 ~0.05 ~0 -1 2 -1 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~0 ~0.05 ~-0.75 -1 2 1 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~-0.75 ~0.05 ~0 1 2 1 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~1 ~2 ~0 0 2 -1 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~0 ~2 ~-1 -1 2 0 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~-1 ~2 ~0 0 2 1 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~0 ~2 ~1 1 2 0 0.1 0
execute as @s[tag=meewizard.spell.tornado] run particle minecraft:cloud ~0 ~3 ~0 0.025 0.02 0.025 0.1 10

execute as @s[tag=meewizard.spell.tornado] run effect give @a[distance=..4,scores={meewizard.spell.tornado_resistance=..0}] minecraft:levitation 1 15

execute as @s[tag=meewizard.spell.tornado] run tp ^ ^ ^0.1
execute as @s[tag=meewizard.spell.tornado] run scoreboard players remove @s meewizard.spell.tornado_executable_entity 1
execute as @s[tag=meewizard.spell.tornado] unless score @s meewizard.spell.tornado_executable_entity matches 1.. run kill @s
