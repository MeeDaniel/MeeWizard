# Do something
particle minecraft:cloud ~9 ~0.5 ~0 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~8.69 ~0.5 ~2.33 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~7.79 ~0.5 ~4.5 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~6.36 ~0.5 ~6.36 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~4.5 ~0.5 ~7.79 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~2.33 ~0.5 ~8.69 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~0 ~0.5 ~9 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-2.33 ~0.5 ~8.69 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-4.5 ~0.5 ~7.79 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-6.36 ~0.5 ~6.36 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-7.79 ~0.5 ~4.5 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-8.69 ~0.5 ~2.33 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-9 ~0.5 ~0 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-8.69 ~0.5 ~-2.33 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-7.79 ~0.5 ~-4.5 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-6.36 ~0.5 ~-6.36 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-4.5 ~0.5 ~-7.79 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~-2.33 ~0.5 ~-8.69 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~0 ~0.5 ~-9 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~2.33 ~0.5 ~-8.69 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~4.5 ~0.5 ~-7.79 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~6.36 ~0.5 ~-6.36 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~7.79 ~0.5 ~-4.5 0.3 0.11 0.3 0.1 5
particle minecraft:cloud ~8.69 ~0.5 ~-2.33 0.3 0.11 0.3 0.1 5

scoreboard players set @s meewizard.spell.toss_resistance 1
execute as @e[distance=..9] unless score @s meewizard.spell.toss_resistance matches 1 run effect give @s minecraft:levitation 3 1 true 
execute as @e[distance=..9] unless score @s meewizard.spell.toss_resistance matches 1 run effect give @s minecraft:slowness 10 0
execute as @a[distance=..9] unless score @s meewizard.spell.toss_resistance matches 1 run scoreboard players set @s meewizard.spell.toss_particle_trail 60
scoreboard players set @s meewizard.spell.toss_resistance 0

# Then reset
function meewizard:spells/toss/reset
