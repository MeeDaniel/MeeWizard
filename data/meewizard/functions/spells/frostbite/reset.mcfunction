# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.frostbite_cost
scoreboard players operation @s meewizard.spell.frostbite_cooldown = @s meewizard.spell.frostbite_delay
