# Run spell logic
function meewizard:spells/leap/tick
function meewizard:spells/toss/tick

# Decrease cooldowns
execute unless score @s meewizard.spell.leap_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.leap_cooldown 1
execute unless score @s meewizard.spell.toss_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.toss_cooldown 1
execute unless score @s meewizard.spell.tornado_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.tornado_cooldown 1
execute unless score @s meewizard.spell.spew_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.spew_cooldown 1
execute unless score @s meewizard.spell.geyser_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.geyser_cooldown 1
execute unless score @s meewizard.spell.frostbite_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.frostbite_cooldown 1
execute unless score @s meewizard.spell.ice_wall_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.ice_wall_cooldown 1
execute unless score @s meewizard.spell.earthquake_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.earthquake_cooldown 1
execute unless score @s meewizard.spell.fangs_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.fangs_cooldown 1
execute unless score @s meewizard.spell.mark_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.mark_cooldown 1
execute unless score @s meewizard.spell.mini_skeleton_cooldown matches ..0 run scoreboard players remove @s meewizard.spell.mini_skeleton_cooldown 1

