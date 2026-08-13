# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.ice_wall_cost
scoreboard players operation @s meewizard.spell.ice_wall_cooldown = @s meewizard.spell.ice_wall_delay
