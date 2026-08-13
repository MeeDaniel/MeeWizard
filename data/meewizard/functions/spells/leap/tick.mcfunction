# Aplies for all the players simultaneously
# Apply levitation effect if needed and clear it if needed
execute if score @s meewizard.spell.leap_levitation matches 2.. run effect give @s minecraft:levitation 1 60 true
execute if score @s meewizard.spell.leap_levitation matches 1 run effect clear @s minecraft:levitation
execute if score @s meewizard.spell.leap_levitation matches 1.. run scoreboard players remove @s meewizard.spell.leap_levitation 1

# Draw particles track
execute if score @s meewizard.spell.leap_particle_trail matches 1.. run particle cloud ~ ~ ~ 0 0 0 0 2 normal
execute if score @s meewizard.spell.leap_particle_trail matches 1.. run scoreboard players remove @s meewizard.spell.leap_particle_trail 1
