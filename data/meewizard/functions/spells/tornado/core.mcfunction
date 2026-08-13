# Do something
summon minecraft:armor_stand ~ ~ ~ {Tags:["meewizard.core.executable_entity", "meewizard.spell.tornado"], Invisible:1b, Invulnerable:1b}
tp @e[tag=meewizard.core.executable_entity, limit=1, sort=nearest] @s
scoreboard players set @e[tag=meewizard.core.executable_entity, limit=1, sort=nearest] meewizard.spell.tornado_executable_entity 200
scoreboard players set @s meewizard.spell.tornado_resistance 200

# Then reset
function meewizard:spells/tornado/reset
