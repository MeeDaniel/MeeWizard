# Do something
scoreboard players set @s meewizard.spell.leap_levitation 3
scoreboard players set @s meewizard.spell.leap_particle_trail 12
particle minecraft:cloud ~ ~0.3 ~ 1 0.3 1 0.02 100 normal

# Then reset
function meewizard:spells/leap/reset
